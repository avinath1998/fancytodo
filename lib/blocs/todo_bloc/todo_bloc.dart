import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fancy_todo/exceptions/network_upload_exception.dart';
import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/repositories/base_todo_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final BaseTodoRepository _todoRepository;
  final Logger logger = Logger("TodoBloc");

  TodoBloc(this._todoRepository) : super(_Initial());

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    yield* event.when(
        createTodo: _mapToCreateTodo,
        updateTodo: _mapToUpdateTodo,
        deleteTodo: _mapToDeleteTodo);
  }

  //Creates a todo, fails on [NetworkUploadException]
  //
  //returns a [Stream<TodoState>]
  Stream<TodoState> _mapToCreateTodo(Todo todo) async* {
    try {
      yield TodoState.loadingTodo();
      Todo savedTodo = await _todoRepository.saveTodo(todo);
      yield TodoState.createdTodo(savedTodo);
    } on NetworkUploadException catch (e, stk) {
      logger.severe(e.msg);
      logger.severe(stk);
      yield TodoState.failedCreatingTodo(e);
    }
  }

  //updates a todo, fails on [NetworkUploadException]
  //
  //returns a [Stream<TodoState>]
  Stream<TodoState> _mapToUpdateTodo(Todo todo) async* {
    try {
      yield TodoState.loadingTodo();
      //lets wait for the user enjoy the nice loading animation😉
      await Future.delayed(Duration(seconds: 1));
      Todo savedTodo = await _todoRepository.updateTodo(todo);
      yield TodoState.updatedTodo(savedTodo);
    } on NetworkUploadException catch (e, stk) {
      logger.severe(e.msg);
      logger.severe(stk);
      yield TodoState.failedUpdatingTodo(e);
    }
  }

  //deletes a todo, fails on [NetworkUploadException]
  //
  //returns a [Stream<TodoState>]
  Stream<TodoState> _mapToDeleteTodo(Todo todo) async* {
    try {
      yield TodoState.loadingTodo();
      Todo savedTodo = await _todoRepository.deleteTodo(todo);
      yield TodoState.deletedTodo(savedTodo);
    } on NetworkUploadException catch (e, stk) {
      logger.severe(e.msg);
      logger.severe(stk);
      yield TodoState.failedDeletingTodo(e);
    }
  }
}
