part of 'todo_stream_bloc.dart';

@freezed
abstract class TodoStreamState with _$TodoStreamState {
  const factory TodoStreamState.initial() = _Initial;
  const factory TodoStreamState.openedStream() = _OpenedStream;
  const factory TodoStreamState.todosReceived(List<Todo> todos) =
      _TodosReceived;
  const factory TodoStreamState.errorReceived() = _ErrorReceived;
  const factory TodoStreamState.closedStream() = _ClosedStream;
}
