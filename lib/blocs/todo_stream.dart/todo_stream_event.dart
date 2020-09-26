part of 'todo_stream_bloc.dart';

@freezed
abstract class TodoStreamEvent with _$TodoStreamEvent {
  const factory TodoStreamEvent.openStreamEvent() = _OpenStreamEvent;
  const factory TodoStreamEvent.todoReceivedEvent(List<Todo> todos) =
      _TodosReceivedEvent;
  const factory TodoStreamEvent.todoErrorReceived() = _TodoErrorReceived;
  const factory TodoStreamEvent.closeStreamEvent() = _ClosedStreamEvent;
}
