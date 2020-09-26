import 'dart:async';

import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/network/db.dart';

import 'base_todo_repository.dart';

class TodoRepository implements BaseTodoRepository {
  final Database db;

  TodoRepository(this.db);

  @override
  Future<Todo> updateTodo(Todo todo) async {
    return await db.updateTodo(todo);
  }

  @override
  Future<Todo> saveTodo(Todo todo) async {
    return await db.saveTodo(todo);
  }

  @override
  Stream<List<Todo>> openTodoStream() {
    return db.openTodoStream();
  }

  @override
  void closeTodoStream() async {
    db.closeTodoStream();
  }

  @override
  Future<Todo> deleteTodo(Todo todo) {
    return db.deleteTodo(todo);
  }
}
