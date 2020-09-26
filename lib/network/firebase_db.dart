import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_todo/exceptions/network_upload_exception.dart';

import 'package:fancy_todo/models/todo.dart';
import 'package:fancy_todo/network/db.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class FirebaseDb implements Database {
  FirebaseFirestore db;
  final Logger logger = Logger("FirebaseDb");
  StreamSubscription _todoStreamSubscription;
  StreamController<List<Todo>> _todoStreamController;

  FirebaseDb({
    @required this.db,
  });

  //Returns a  `Todo` after saving a [Todo] to Firestore
  //
  //throws a [NetworkUploadException]
  @override
  Future<Todo> updateTodo(Todo todo) async {
    try {
      logger.info(todo.toString());
      await db.collection("todos").doc(todo.id).update(todo.toJson());
      return todo;
    } on FirebaseException catch (e, stk) {
      logger.severe("${e.code} ${e.message}");
      logger.severe(stk);
      throw NetworkUploadException(msg: e.message);
    }
  }

  //Returns a  `Todo` after saving a [Todo] to Firestore
  //
  //throws a [NetworkUploadException]
  @override
  Future<Todo> saveTodo(Todo todo) async {
    try {
      Map<String, dynamic> map = todo.toJson();
      map.remove("id");
      await db.collection("todos").add(todo.toJson());
      return todo;
    } on FirebaseException catch (e, stk) {
      logger.severe("${e.code} ${e.message}");
      logger.severe(stk);
      throw NetworkUploadException(msg: e.message);
    }
  }

  //closes the opened todo stream
  @override
  void closeTodoStream() {
    _todoStreamSubscription?.cancel();
    _todoStreamSubscription = null;
    _todoStreamController?.close();
    _todoStreamController = null;
  }

  //opens a stream of todos.
  //
  //returns a [StreamController] of Todos
  @override
  Stream<List<Todo>> openTodoStream() {
    assert(_todoStreamSubscription == null,
        "TodoStreamSubscription has already been instantiated, close it before opening again.");
    assert(_todoStreamController == null,
        "TodoStreamController has already been instantiated, close it before opening again.");

    _todoStreamController = StreamController();
    _todoStreamSubscription = db
        .collection("todos")
        .orderBy("expiryDate")
        .snapshots()
        .listen((QuerySnapshot snap) {
      List<Todo> todos = List();
      snap.docs.forEach((doc) {
        Map<String, dynamic> map = doc.data();
        map["id"] = doc.id;
        Todo todo = Todo.fromJson(map);
        todos.add(todo);
      });
      _todoStreamController.add(todos);
    }, onError: (err) {
      _todoStreamController.addError(err);
    });

    return _todoStreamController.stream;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async {
    try {
      db.collection("todos").doc(todo.id).delete();
      return todo;
    } on FirebaseException catch (e, stk) {
      logger.severe("${e.code} ${e.message}");
      logger.severe(stk);
      throw NetworkUploadException(msg: e.message);
    }
  }
}
