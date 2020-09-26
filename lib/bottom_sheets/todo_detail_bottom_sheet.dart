import 'package:fancy_todo/blocs/todo_bloc/todo_bloc.dart';
import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/models/extensions/color_extension.dart';
import 'package:fancy_todo/repositories/todo_repository.dart';
import 'package:flutter/material.dart';
import 'package:fancy_todo/models/extensions/date_helper_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_formfield/flutter_datetime_formfield.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

class TodoDetailBottomSheet extends StatefulWidget {
  final Todo todo;

  const TodoDetailBottomSheet({Key key, this.todo}) : super(key: key);

  @override
  _TodoDetailBottomSheetState createState() => _TodoDetailBottomSheetState();
}

class _TodoDetailBottomSheetState extends State<TodoDetailBottomSheet> {
  Todo _currentTodo;
  TodoBloc _todoBloc;
  final GlobalKey<FormState> _globalKey = GlobalKey();
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    if (widget.todo != null) {
      _currentTodo = widget.todo.copyWith();
    } else {
      _currentTodo = Todo(
          description: null, id: null, title: null, color: Colors.red.toHex());
      _isEditing = true;
    }
    _todoBloc = TodoBloc(RepositoryProvider.of<TodoRepository>(context));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30.0))),
          margin: const EdgeInsets.only(top: 70),
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _globalKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      widget.todo != null
                          ? widget.todo.title
                          : "Create a Task.",
                      style: Theme.of(context).textTheme.headline4),
                  Container(
                    child: Divider(),
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    width: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: _isEditing,
                    initialValue:
                        _currentTodo != null ? _currentTodo.title : "",
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 3,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter a valid title";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        _currentTodo = _currentTodo.copyWith(title: val);
                      });
                    },
                    style: Theme.of(context).textTheme.headline5,
                    decoration: InputDecoration(
                        labelText: "Task Name", icon: Icon(Icons.check)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: _isEditing,
                    initialValue: _currentTodo.description,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Enter a valid description";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Description", icon: Icon(Icons.short_text)),
                    style: Theme.of(context).textTheme.subtitle1,
                    onSaved: (val) {
                      _currentTodo = _currentTodo.copyWith(description: val);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                        size: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: DateTimeFormField(
                          enabled: _isEditing,
                          onlyDate: true,
                          initialValue: _currentTodo.expiryDate,
                          label: "Date",
                          validator: (DateTime dateTime) {
                            if (dateTime == null) {
                              return "Date Time Required";
                            }
                            return null;
                          },
                          onSaved: (DateTime dateTime) {
                            setState(() {
                              _currentTodo =
                                  _currentTodo.copyWith(expiryDate: dateTime);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.color_lens,
                        color: Colors.grey,
                        size: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.todo != null
                            ? "Indicator Color: "
                            : "Choose a color:",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_isEditing)
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: MaterialColorPicker(
                                      shrinkWrap: true,
                                      onColorChange: (Color color) {
                                        setState(() {
                                          _currentTodo = _currentTodo.copyWith(
                                              color: color.toHex());
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      onlyShadeSelection: true,
                                      onBack: () {
                                        Navigator.of(context).pop();
                                      },
                                      selectedColor: Colors.red,
                                    ),
                                  );
                                });
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentTodo?.color != null
                                    ? ColorExtension.fromHex(_currentTodo.color)
                                    : Colors.red)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: BlocBuilder<TodoBloc, TodoState>(
                      cubit: _todoBloc,
                      builder: (context, state) {
                        return state.maybeWhen(loadingTodo: () {
                          return CircularProgressIndicator();
                        }, createdTodo: (Todo todo) {
                          return Column(
                            children: [
                              Text(
                                "Task has been created.",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.green),
                              ),
                              Icon(Icons.check, color: Colors.green),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, deletedTodo: (todo) {
                          return Column(
                            children: [
                              Text(
                                "Deleted this task!",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.green),
                              ),
                              Icon(Icons.check, color: Colors.green),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, updatedTodo: (Todo todo) {
                          return Column(
                            children: [
                              Text(
                                "Details have been saved.",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.green),
                              ),
                              Icon(Icons.check, color: Colors.green),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, failedCreatingTodo: (Exception e) {
                          return Column(
                            children: [
                              Text(
                                "An error has occured\ncreating this task, try again.",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Theme.of(context).errorColor),
                              ),
                              Icon(Icons.close,
                                  color: Theme.of(context).errorColor),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, failedUpdatingTodo: (Exception e) {
                          return Column(
                            children: [
                              Text(
                                "An error has occured\nupdating this task, try again.",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Theme.of(context).errorColor),
                              ),
                              Icon(Icons.close,
                                  color: Theme.of(context).errorColor),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, failedDeletingTodo: (Exception e) {
                          return Column(
                            children: [
                              Text(
                                "An error has occured\ndeleting this task, try again.",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Theme.of(context).errorColor),
                              ),
                              Icon(Icons.close,
                                  color: Theme.of(context).errorColor),
                              RaisedButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }, orElse: () {
                          if (widget.todo == null) {
                            return RaisedButton(
                              child: Text("Create Task"),
                              onPressed: () {
                                if (_globalKey.currentState.validate()) {
                                  _globalKey.currentState.save();
                                  _todoBloc
                                      .add(TodoEvent.createTodo(_currentTodo));
                                }
                              },
                            );
                          } else {
                            if (!_isEditing) {
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FlatButton(
                                    child: Text("Delete Task"),
                                    onPressed: () {
                                      _todoBloc.add(
                                          TodoEvent.deleteTodo(widget.todo));
                                    },
                                  ),
                                  RaisedButton(
                                    child: Text("Edit Task"),
                                    onPressed: () {
                                      setState(() {
                                        _isEditing = true;
                                      });
                                    },
                                  ),
                                ],
                              );
                            } else {
                              return RaisedButton(
                                child: Text("Save Changes"),
                                onPressed: () {
                                  if (_globalKey.currentState.validate()) {
                                    _globalKey.currentState.save();
                                    _todoBloc.add(
                                        TodoEvent.updateTodo(_currentTodo));
                                  }
                                },
                              );
                            }
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
