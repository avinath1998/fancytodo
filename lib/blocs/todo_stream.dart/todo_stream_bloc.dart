import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fancy_todo/blocs/todo_bloc/todo_bloc.dart';
import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/repositories/base_todo_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'todo_stream_event.dart';
part 'todo_stream_state.dart';
part 'todo_stream_bloc.freezed.dart';

class TodoStreamBloc extends Bloc<TodoStreamEvent, TodoStreamState> {
  final BaseTodoRepository _todoRepository;
  final Logger logger = Logger("TodoStreamBloc");
  StreamSubscription _todoSubscription;

  TodoStreamBloc(this._todoRepository) : super(_Initial());

  @override
  Stream<TodoStreamState> mapEventToState(
    TodoStreamEvent event,
  ) async* {
    logger.info(event);
    yield* event.when(
        openStreamEvent: _mapToOpenStream,
        closeStreamEvent: _mapToCloseStream,
        todoErrorReceived: _mapToErrorReceived,
        todoReceivedEvent: _mapTodosRecevied);
  }

  Stream<TodoStreamState> _mapToOpenStream() async* {
    logger.info("Opening todo stream");
    yield TodoStreamState.openedStream();
    _todoSubscription = _todoRepository.openTodoStream().listen((event) {
      logger.info("Todo has been received: ${event.length}");
      add(TodoStreamEvent.todoReceivedEvent(event));
    }, onError: (error) {
      logger.info("Exception received during stream: ${error.toString()}");
      add(TodoStreamEvent.todoErrorReceived());
    });
  }

  Stream<TodoStreamState> _mapToCloseStream() async* {
    logger.info("Closing todo stream");
    _todoRepository.closeTodoStream();
    _todoSubscription.cancel();
    yield TodoStreamState.closedStream();
  }

  Stream<TodoStreamState> _mapToErrorReceived() async* {
    logger.info("Todo has been received");
    yield TodoStreamState.errorReceived();
    yield TodoStreamState.initial();
  }

  Stream<TodoStreamState> _mapTodosRecevied(List<Todo> todos) async* {
    logger.info("Todo has been received");
    yield TodoStreamState.todosReceived(todos);
    yield TodoStreamState.initial();
  }
}
