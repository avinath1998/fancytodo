// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_stream_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoStreamEventTearOff {
  const _$TodoStreamEventTearOff();

// ignore: unused_element
  _OpenStreamEvent openStreamEvent() {
    return const _OpenStreamEvent();
  }

// ignore: unused_element
  _TodosReceivedEvent todoReceivedEvent(List<Todo> todos) {
    return _TodosReceivedEvent(
      todos,
    );
  }

// ignore: unused_element
  _TodoErrorReceived todoErrorReceived() {
    return const _TodoErrorReceived();
  }

// ignore: unused_element
  _ClosedStreamEvent closeStreamEvent() {
    return const _ClosedStreamEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $TodoStreamEvent = _$TodoStreamEventTearOff();

/// @nodoc
mixin _$TodoStreamEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openStreamEvent(),
    @required Result todoReceivedEvent(List<Todo> todos),
    @required Result todoErrorReceived(),
    @required Result closeStreamEvent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openStreamEvent(),
    Result todoReceivedEvent(List<Todo> todos),
    Result todoErrorReceived(),
    Result closeStreamEvent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openStreamEvent(_OpenStreamEvent value),
    @required Result todoReceivedEvent(_TodosReceivedEvent value),
    @required Result todoErrorReceived(_TodoErrorReceived value),
    @required Result closeStreamEvent(_ClosedStreamEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openStreamEvent(_OpenStreamEvent value),
    Result todoReceivedEvent(_TodosReceivedEvent value),
    Result todoErrorReceived(_TodoErrorReceived value),
    Result closeStreamEvent(_ClosedStreamEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoStreamEventCopyWith<$Res> {
  factory $TodoStreamEventCopyWith(
          TodoStreamEvent value, $Res Function(TodoStreamEvent) then) =
      _$TodoStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStreamEventCopyWithImpl<$Res>
    implements $TodoStreamEventCopyWith<$Res> {
  _$TodoStreamEventCopyWithImpl(this._value, this._then);

  final TodoStreamEvent _value;
  // ignore: unused_field
  final $Res Function(TodoStreamEvent) _then;
}

/// @nodoc
abstract class _$OpenStreamEventCopyWith<$Res> {
  factory _$OpenStreamEventCopyWith(
          _OpenStreamEvent value, $Res Function(_OpenStreamEvent) then) =
      __$OpenStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenStreamEventCopyWithImpl<$Res>
    extends _$TodoStreamEventCopyWithImpl<$Res>
    implements _$OpenStreamEventCopyWith<$Res> {
  __$OpenStreamEventCopyWithImpl(
      _OpenStreamEvent _value, $Res Function(_OpenStreamEvent) _then)
      : super(_value, (v) => _then(v as _OpenStreamEvent));

  @override
  _OpenStreamEvent get _value => super._value as _OpenStreamEvent;
}

/// @nodoc
class _$_OpenStreamEvent implements _OpenStreamEvent {
  const _$_OpenStreamEvent();

  @override
  String toString() {
    return 'TodoStreamEvent.openStreamEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenStreamEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openStreamEvent(),
    @required Result todoReceivedEvent(List<Todo> todos),
    @required Result todoErrorReceived(),
    @required Result closeStreamEvent(),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return openStreamEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openStreamEvent(),
    Result todoReceivedEvent(List<Todo> todos),
    Result todoErrorReceived(),
    Result closeStreamEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openStreamEvent != null) {
      return openStreamEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openStreamEvent(_OpenStreamEvent value),
    @required Result todoReceivedEvent(_TodosReceivedEvent value),
    @required Result todoErrorReceived(_TodoErrorReceived value),
    @required Result closeStreamEvent(_ClosedStreamEvent value),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return openStreamEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openStreamEvent(_OpenStreamEvent value),
    Result todoReceivedEvent(_TodosReceivedEvent value),
    Result todoErrorReceived(_TodoErrorReceived value),
    Result closeStreamEvent(_ClosedStreamEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openStreamEvent != null) {
      return openStreamEvent(this);
    }
    return orElse();
  }
}

abstract class _OpenStreamEvent implements TodoStreamEvent {
  const factory _OpenStreamEvent() = _$_OpenStreamEvent;
}

/// @nodoc
abstract class _$TodosReceivedEventCopyWith<$Res> {
  factory _$TodosReceivedEventCopyWith(
          _TodosReceivedEvent value, $Res Function(_TodosReceivedEvent) then) =
      __$TodosReceivedEventCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodosReceivedEventCopyWithImpl<$Res>
    extends _$TodoStreamEventCopyWithImpl<$Res>
    implements _$TodosReceivedEventCopyWith<$Res> {
  __$TodosReceivedEventCopyWithImpl(
      _TodosReceivedEvent _value, $Res Function(_TodosReceivedEvent) _then)
      : super(_value, (v) => _then(v as _TodosReceivedEvent));

  @override
  _TodosReceivedEvent get _value => super._value as _TodosReceivedEvent;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosReceivedEvent(
      todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_TodosReceivedEvent implements _TodosReceivedEvent {
  const _$_TodosReceivedEvent(this.todos) : assert(todos != null);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoStreamEvent.todoReceivedEvent(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosReceivedEvent &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$TodosReceivedEventCopyWith<_TodosReceivedEvent> get copyWith =>
      __$TodosReceivedEventCopyWithImpl<_TodosReceivedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openStreamEvent(),
    @required Result todoReceivedEvent(List<Todo> todos),
    @required Result todoErrorReceived(),
    @required Result closeStreamEvent(),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return todoReceivedEvent(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openStreamEvent(),
    Result todoReceivedEvent(List<Todo> todos),
    Result todoErrorReceived(),
    Result closeStreamEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todoReceivedEvent != null) {
      return todoReceivedEvent(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openStreamEvent(_OpenStreamEvent value),
    @required Result todoReceivedEvent(_TodosReceivedEvent value),
    @required Result todoErrorReceived(_TodoErrorReceived value),
    @required Result closeStreamEvent(_ClosedStreamEvent value),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return todoReceivedEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openStreamEvent(_OpenStreamEvent value),
    Result todoReceivedEvent(_TodosReceivedEvent value),
    Result todoErrorReceived(_TodoErrorReceived value),
    Result closeStreamEvent(_ClosedStreamEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todoReceivedEvent != null) {
      return todoReceivedEvent(this);
    }
    return orElse();
  }
}

abstract class _TodosReceivedEvent implements TodoStreamEvent {
  const factory _TodosReceivedEvent(List<Todo> todos) = _$_TodosReceivedEvent;

  List<Todo> get todos;
  _$TodosReceivedEventCopyWith<_TodosReceivedEvent> get copyWith;
}

/// @nodoc
abstract class _$TodoErrorReceivedCopyWith<$Res> {
  factory _$TodoErrorReceivedCopyWith(
          _TodoErrorReceived value, $Res Function(_TodoErrorReceived) then) =
      __$TodoErrorReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodoErrorReceivedCopyWithImpl<$Res>
    extends _$TodoStreamEventCopyWithImpl<$Res>
    implements _$TodoErrorReceivedCopyWith<$Res> {
  __$TodoErrorReceivedCopyWithImpl(
      _TodoErrorReceived _value, $Res Function(_TodoErrorReceived) _then)
      : super(_value, (v) => _then(v as _TodoErrorReceived));

  @override
  _TodoErrorReceived get _value => super._value as _TodoErrorReceived;
}

/// @nodoc
class _$_TodoErrorReceived implements _TodoErrorReceived {
  const _$_TodoErrorReceived();

  @override
  String toString() {
    return 'TodoStreamEvent.todoErrorReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TodoErrorReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openStreamEvent(),
    @required Result todoReceivedEvent(List<Todo> todos),
    @required Result todoErrorReceived(),
    @required Result closeStreamEvent(),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return todoErrorReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openStreamEvent(),
    Result todoReceivedEvent(List<Todo> todos),
    Result todoErrorReceived(),
    Result closeStreamEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todoErrorReceived != null) {
      return todoErrorReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openStreamEvent(_OpenStreamEvent value),
    @required Result todoReceivedEvent(_TodosReceivedEvent value),
    @required Result todoErrorReceived(_TodoErrorReceived value),
    @required Result closeStreamEvent(_ClosedStreamEvent value),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return todoErrorReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openStreamEvent(_OpenStreamEvent value),
    Result todoReceivedEvent(_TodosReceivedEvent value),
    Result todoErrorReceived(_TodoErrorReceived value),
    Result closeStreamEvent(_ClosedStreamEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todoErrorReceived != null) {
      return todoErrorReceived(this);
    }
    return orElse();
  }
}

abstract class _TodoErrorReceived implements TodoStreamEvent {
  const factory _TodoErrorReceived() = _$_TodoErrorReceived;
}

/// @nodoc
abstract class _$ClosedStreamEventCopyWith<$Res> {
  factory _$ClosedStreamEventCopyWith(
          _ClosedStreamEvent value, $Res Function(_ClosedStreamEvent) then) =
      __$ClosedStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClosedStreamEventCopyWithImpl<$Res>
    extends _$TodoStreamEventCopyWithImpl<$Res>
    implements _$ClosedStreamEventCopyWith<$Res> {
  __$ClosedStreamEventCopyWithImpl(
      _ClosedStreamEvent _value, $Res Function(_ClosedStreamEvent) _then)
      : super(_value, (v) => _then(v as _ClosedStreamEvent));

  @override
  _ClosedStreamEvent get _value => super._value as _ClosedStreamEvent;
}

/// @nodoc
class _$_ClosedStreamEvent implements _ClosedStreamEvent {
  const _$_ClosedStreamEvent();

  @override
  String toString() {
    return 'TodoStreamEvent.closeStreamEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClosedStreamEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openStreamEvent(),
    @required Result todoReceivedEvent(List<Todo> todos),
    @required Result todoErrorReceived(),
    @required Result closeStreamEvent(),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return closeStreamEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openStreamEvent(),
    Result todoReceivedEvent(List<Todo> todos),
    Result todoErrorReceived(),
    Result closeStreamEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeStreamEvent != null) {
      return closeStreamEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openStreamEvent(_OpenStreamEvent value),
    @required Result todoReceivedEvent(_TodosReceivedEvent value),
    @required Result todoErrorReceived(_TodoErrorReceived value),
    @required Result closeStreamEvent(_ClosedStreamEvent value),
  }) {
    assert(openStreamEvent != null);
    assert(todoReceivedEvent != null);
    assert(todoErrorReceived != null);
    assert(closeStreamEvent != null);
    return closeStreamEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openStreamEvent(_OpenStreamEvent value),
    Result todoReceivedEvent(_TodosReceivedEvent value),
    Result todoErrorReceived(_TodoErrorReceived value),
    Result closeStreamEvent(_ClosedStreamEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeStreamEvent != null) {
      return closeStreamEvent(this);
    }
    return orElse();
  }
}

abstract class _ClosedStreamEvent implements TodoStreamEvent {
  const factory _ClosedStreamEvent() = _$_ClosedStreamEvent;
}

/// @nodoc
class _$TodoStreamStateTearOff {
  const _$TodoStreamStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _OpenedStream openedStream() {
    return const _OpenedStream();
  }

// ignore: unused_element
  _TodosReceived todosReceived(List<Todo> todos) {
    return _TodosReceived(
      todos,
    );
  }

// ignore: unused_element
  _ErrorReceived errorReceived() {
    return const _ErrorReceived();
  }

// ignore: unused_element
  _ClosedStream closedStream() {
    return const _ClosedStream();
  }
}

/// @nodoc
// ignore: unused_element
const $TodoStreamState = _$TodoStreamStateTearOff();

/// @nodoc
mixin _$TodoStreamState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoStreamStateCopyWith<$Res> {
  factory $TodoStreamStateCopyWith(
          TodoStreamState value, $Res Function(TodoStreamState) then) =
      _$TodoStreamStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStreamStateCopyWithImpl<$Res>
    implements $TodoStreamStateCopyWith<$Res> {
  _$TodoStreamStateCopyWithImpl(this._value, this._then);

  final TodoStreamState _value;
  // ignore: unused_field
  final $Res Function(TodoStreamState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoStreamStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodoStreamState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoStreamState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OpenedStreamCopyWith<$Res> {
  factory _$OpenedStreamCopyWith(
          _OpenedStream value, $Res Function(_OpenedStream) then) =
      __$OpenedStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenedStreamCopyWithImpl<$Res>
    extends _$TodoStreamStateCopyWithImpl<$Res>
    implements _$OpenedStreamCopyWith<$Res> {
  __$OpenedStreamCopyWithImpl(
      _OpenedStream _value, $Res Function(_OpenedStream) _then)
      : super(_value, (v) => _then(v as _OpenedStream));

  @override
  _OpenedStream get _value => super._value as _OpenedStream;
}

/// @nodoc
class _$_OpenedStream implements _OpenedStream {
  const _$_OpenedStream();

  @override
  String toString() {
    return 'TodoStreamState.openedStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenedStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return openedStream();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openedStream != null) {
      return openedStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return openedStream(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openedStream != null) {
      return openedStream(this);
    }
    return orElse();
  }
}

abstract class _OpenedStream implements TodoStreamState {
  const factory _OpenedStream() = _$_OpenedStream;
}

/// @nodoc
abstract class _$TodosReceivedCopyWith<$Res> {
  factory _$TodosReceivedCopyWith(
          _TodosReceived value, $Res Function(_TodosReceived) then) =
      __$TodosReceivedCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodosReceivedCopyWithImpl<$Res>
    extends _$TodoStreamStateCopyWithImpl<$Res>
    implements _$TodosReceivedCopyWith<$Res> {
  __$TodosReceivedCopyWithImpl(
      _TodosReceived _value, $Res Function(_TodosReceived) _then)
      : super(_value, (v) => _then(v as _TodosReceived));

  @override
  _TodosReceived get _value => super._value as _TodosReceived;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosReceived(
      todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_TodosReceived implements _TodosReceived {
  const _$_TodosReceived(this.todos) : assert(todos != null);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoStreamState.todosReceived(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosReceived &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$TodosReceivedCopyWith<_TodosReceived> get copyWith =>
      __$TodosReceivedCopyWithImpl<_TodosReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return todosReceived(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return todosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(this);
    }
    return orElse();
  }
}

abstract class _TodosReceived implements TodoStreamState {
  const factory _TodosReceived(List<Todo> todos) = _$_TodosReceived;

  List<Todo> get todos;
  _$TodosReceivedCopyWith<_TodosReceived> get copyWith;
}

/// @nodoc
abstract class _$ErrorReceivedCopyWith<$Res> {
  factory _$ErrorReceivedCopyWith(
          _ErrorReceived value, $Res Function(_ErrorReceived) then) =
      __$ErrorReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorReceivedCopyWithImpl<$Res>
    extends _$TodoStreamStateCopyWithImpl<$Res>
    implements _$ErrorReceivedCopyWith<$Res> {
  __$ErrorReceivedCopyWithImpl(
      _ErrorReceived _value, $Res Function(_ErrorReceived) _then)
      : super(_value, (v) => _then(v as _ErrorReceived));

  @override
  _ErrorReceived get _value => super._value as _ErrorReceived;
}

/// @nodoc
class _$_ErrorReceived implements _ErrorReceived {
  const _$_ErrorReceived();

  @override
  String toString() {
    return 'TodoStreamState.errorReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return errorReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorReceived != null) {
      return errorReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return errorReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorReceived != null) {
      return errorReceived(this);
    }
    return orElse();
  }
}

abstract class _ErrorReceived implements TodoStreamState {
  const factory _ErrorReceived() = _$_ErrorReceived;
}

/// @nodoc
abstract class _$ClosedStreamCopyWith<$Res> {
  factory _$ClosedStreamCopyWith(
          _ClosedStream value, $Res Function(_ClosedStream) then) =
      __$ClosedStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClosedStreamCopyWithImpl<$Res>
    extends _$TodoStreamStateCopyWithImpl<$Res>
    implements _$ClosedStreamCopyWith<$Res> {
  __$ClosedStreamCopyWithImpl(
      _ClosedStream _value, $Res Function(_ClosedStream) _then)
      : super(_value, (v) => _then(v as _ClosedStream));

  @override
  _ClosedStream get _value => super._value as _ClosedStream;
}

/// @nodoc
class _$_ClosedStream implements _ClosedStream {
  const _$_ClosedStream();

  @override
  String toString() {
    return 'TodoStreamState.closedStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClosedStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result openedStream(),
    @required Result todosReceived(List<Todo> todos),
    @required Result errorReceived(),
    @required Result closedStream(),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return closedStream();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result openedStream(),
    Result todosReceived(List<Todo> todos),
    Result errorReceived(),
    Result closedStream(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closedStream != null) {
      return closedStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result openedStream(_OpenedStream value),
    @required Result todosReceived(_TodosReceived value),
    @required Result errorReceived(_ErrorReceived value),
    @required Result closedStream(_ClosedStream value),
  }) {
    assert(initial != null);
    assert(openedStream != null);
    assert(todosReceived != null);
    assert(errorReceived != null);
    assert(closedStream != null);
    return closedStream(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result openedStream(_OpenedStream value),
    Result todosReceived(_TodosReceived value),
    Result errorReceived(_ErrorReceived value),
    Result closedStream(_ClosedStream value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closedStream != null) {
      return closedStream(this);
    }
    return orElse();
  }
}

abstract class _ClosedStream implements TodoStreamState {
  const factory _ClosedStream() = _$_ClosedStream;
}
