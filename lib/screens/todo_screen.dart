import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_todo/blocs/todo_bloc/todo_bloc.dart';
import 'package:fancy_todo/blocs/todo_stream.dart/todo_stream_bloc.dart';
import 'package:fancy_todo/bottom_sheets/todo_detail_bottom_sheet.dart';
import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/network/firebase_db.dart';
import 'package:fancy_todo/repositories/todo_repository.dart';
import 'package:fancy_todo/widgets/todo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TodoStreamBloc _todoStreamBloc;
  TodoRepository _todoRepository;
  final Logger logger = Logger("TodoScreenState");
  final List<Todo> _todoList = List();
  final List<Todo> _doneList = List();
  bool _isStreamOpened = false;
  bool _isLoading = false;
  bool _showError = false;

  @override
  void initState() {
    super.initState();
    _initBlocs();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _todoStreamBloc.add(TodoStreamEvent.openStreamEvent());
    });
  }

  //Instantiates the blocs and repositories used for todos.
  void _initBlocs() {
    _todoRepository =
        TodoRepository(FirebaseDb(db: FirebaseFirestore.instance));
    _todoStreamBloc = TodoStreamBloc(_todoRepository);
    logger.info("Blocs Instantiated");
  }

  @override
  void dispose() {
    super.dispose();
    _todoStreamBloc.add(TodoStreamEvent.closeStreamEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SafeArea(
                    child: RepositoryProvider.value(
                      value: _todoRepository,
                      child: TodoDetailBottomSheet(),
                    ),
                  );
                });
          },
        ),
        body: RepositoryProvider(
          create: (context) => _todoRepository,
          child: BlocProvider(
            create: (context) => _todoStreamBloc,
            child: BlocListener<TodoStreamBloc, TodoStreamState>(
              cubit: _todoStreamBloc,
              listener: (context, state) {
                state.when(
                    initial: () {},
                    errorReceived: () {
                      setState(() {
                        _showError = true;
                      });
                    },
                    openedStream: () {
                      setState(() {
                        _isStreamOpened = true;
                      });
                    },
                    closedStream: () {
                      setState(() {
                        _isStreamOpened = false;
                      });
                    },
                    todosReceived: (List<Todo> todos) {
                      setState(() {
                        _todoList.clear();
                        _doneList.clear();

                        todos.forEach((element) {
                          if (element.isComplete)
                            _doneList.add(element);
                          else
                            _todoList.add(element);
                        });

                        logger.info("${_todoList.length}");
                      });
                    });
              },
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, cosntraints) {
                    if (_isLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (_showError) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(
                                  child: Text(
                                      "An error has loading your tasks, try again.")),
                            ),
                          ],
                        ),
                      );
                    }
                    if (_isStreamOpened) {
                      if (_todoList.length == 0 && _doneList.length == 0) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Waiting for your tasks to come in...",
                                style: Theme.of(context).textTheme.headline4,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Tap the + below to add some.",
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                        );
                      } else {
                        return CustomScrollView(
                          slivers: [
                            SliverPadding(
                              padding: const EdgeInsets.all(15.0),
                              sliver: SliverToBoxAdapter(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hi!",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor),
                                    ),
                                    Text(
                                      "Here are your tasks.",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SliverAppBar(
                              title: Text(
                                "Remaining Tasks",
                                style: Theme.of(context)
                                    .appBarTheme
                                    .textTheme
                                    .headline3,
                              ),
                            ),
                            SliverList(
                              delegate:
                                  SliverChildBuilderDelegate((context, index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(),
                                    TodoCard(
                                        key: GlobalKey(
                                            debugLabel: _todoList[index].id),
                                        todo: _todoList[index],
                                        onTap: () {
                                          showModalBottomSheet(
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (context) {
                                                return SafeArea(
                                                  child:
                                                      RepositoryProvider.value(
                                                    value: _todoRepository,
                                                    child:
                                                        TodoDetailBottomSheet(
                                                      todo: _todoList[index],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }),
                                    Divider()
                                  ],
                                );
                              }, childCount: _todoList.length),
                            ),
                            SliverToBoxAdapter(
                              child: _todoList.length == 0
                                  ? Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text(
                                        "Looks like you've completed all your tasks!",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      )),
                                    )
                                  : Container(),
                            ),
                            SliverAppBar(
                              title: Text(
                                "Completed Tasks",
                                style: Theme.of(context)
                                    .appBarTheme
                                    .textTheme
                                    .headline3,
                              ),
                            ),
                            SliverList(
                              delegate:
                                  SliverChildBuilderDelegate((context, index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(),
                                    TodoCard(
                                        key: GlobalKey(
                                            debugLabel: _doneList[index].id),
                                        todo: _doneList[index],
                                        onTap: () {
                                          showModalBottomSheet(
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (context) {
                                                return SafeArea(
                                                  child:
                                                      RepositoryProvider.value(
                                                    value: _todoRepository,
                                                    child:
                                                        TodoDetailBottomSheet(
                                                      todo: _doneList[index],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }),
                                    Divider()
                                  ],
                                );
                              }, childCount: _doneList.length),
                            ),
                            SliverToBoxAdapter(
                              child: _doneList.length == 0
                                  ? Padding(
                                      padding: const EdgeInsets.all(10.0) +
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Center(
                                          child: Text(
                                        "You haven't completed any tasks yet!",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      )),
                                    )
                                  : Container(),
                            ),
                          ],
                        );
                      }
                    } else {
                      return Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Cannot retrieve your todos, try again."),
                          SizedBox(height: 10),
                          GestureDetector(
                            child: Icon(Icons.refresh, size: 30),
                            onTap: () {
                              _todoStreamBloc
                                  .add(TodoStreamEvent.openStreamEvent());
                            },
                          ),
                        ],
                      ));
                    }
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
