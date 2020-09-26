part of 'todo_bloc.dart';

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.createTodo(Todo todo) = _CreateTodo;
  const factory TodoEvent.updateTodo(Todo todo) = _UpdateTodo;
  const factory TodoEvent.deleteTodo(Todo todo) = _DeleteTodo;
}
