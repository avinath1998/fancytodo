import 'dart:async';

import 'package:fancy_todo/models/todo.dart';

abstract class Database {
  Future<Todo> saveTodo(Todo todo);
  Future<Todo> updateTodo(Todo todo);
  Future<Todo> deleteTodo(Todo todo);
  Stream<List<Todo>> openTodoStream();
  void closeTodoStream();
}
