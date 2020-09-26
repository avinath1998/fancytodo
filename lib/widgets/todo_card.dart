import 'package:fancy_todo/blocs/todo_bloc/todo_bloc.dart';
import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/repositories/todo_repository.dart';
import 'package:fancy_todo/models/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:fancy_todo/models/extensions/date_helper_extension.dart';
import 'package:logging/logging.dart';

class TodoCard extends StatefulWidget {
  final Todo todo;
  final Function() onTap;
  const TodoCard({Key key, this.todo, this.onTap}) : super(key: key);
  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  Todo _currentTodo;
  bool _isSaving = false;
  final DateTime _dateNow = DateTime.now();
  TodoBloc _todoBloc;
  final Logger logger = Logger("TodoCardState");
  @override
  void initState() {
    super.initState();
    _currentTodo = widget.todo;
    _todoBloc = TodoBloc(RepositoryProvider.of<TodoRepository>(context));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Card(
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _currentTodo.isComplete,
                      onChanged: (newValue) async {
                        setState(() {
                          _currentTodo =
                              _currentTodo.copyWith(isComplete: newValue);
                        });
                        _todoBloc.add(TodoEvent.updateTodo(
                            _currentTodo.copyWith(isComplete: newValue)));
                      },
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocBuilder<TodoBloc, TodoState>(
                              cubit: _todoBloc,
                              buildWhen: (context, state) {
                                return state.maybeWhen(
                                    loadingTodo: () => true,
                                    updatedTodo: (todo) => true,
                                    orElse: () => false);
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                    updatedTodo: (Todo todo) {
                                  return Container();
                                }, loadingTodo: () {
                                  return LinearProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      ColorExtension.fromHex(
                                          _currentTodo.color),
                                    ),
                                  );
                                }, failedUpdatingTodo: (e) {
                                  return Text(
                                      "An error has occured updating this todo, try again");
                                }, orElse: () {
                                  return Container(
                                    height: 4,
                                    width: 30,
                                    color: ColorExtension.fromHex(
                                        _currentTodo.color),
                                  );
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              _currentTodo.title,
                              style: Theme.of(context).textTheme.headline6,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              _currentTodo.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.start,
                            )
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            _currentTodo.expiryDate.toDateString(),
                            style: Theme.of(context).textTheme.subtitle2,
                            textAlign: TextAlign.end,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (_currentTodo.expiryDate.isToday()) {
                                return Text(
                                  "(Today)",
                                  style: Theme.of(context).textTheme.bodyText1,
                                );
                              } else if (_currentTodo.expiryDate.isTomorrow()) {
                                return Text(
                                  "(Tomorrow)",
                                  style: Theme.of(context).textTheme.bodyText1,
                                );
                              } else {
                                if (_currentTodo.expiryDate
                                    .isBefore(DateTime.now())) {
                                  if (!_currentTodo.isComplete) {
                                    return Text(
                                      "(Overdue)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color:
                                                  Theme.of(context).errorColor),
                                    );
                                  }
                                }
                              }
                              return Container();
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}
