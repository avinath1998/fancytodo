part of 'todo_bloc.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.updatedTodo(Todo todo) = _UpdatedTodo;
  const factory TodoState.createdTodo(Todo todo) = _CreatedTodo;
  const factory TodoState.deletedTodo(Todo todo) = _DeletedTodo;
  const factory TodoState.loadingTodo() = _LoadingTodo;
  const factory TodoState.failedUpdatingTodo(Exception e) = _FailedUpatingTodo;
  const factory TodoState.failedCreatingTodo(Exception e) = _FailedCreatingTodo;
  const factory TodoState.failedDeletingTodo(Exception e) = _FailedDeletingTodo;
}
