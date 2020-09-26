// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

// ignore: unused_element
  _CreateTodo createTodo(Todo todo) {
    return _CreateTodo(
      todo,
    );
  }

// ignore: unused_element
  _UpdateTodo updateTodo(Todo todo) {
    return _UpdateTodo(
      todo,
    );
  }

// ignore: unused_element
  _DeleteTodo deleteTodo(Todo todo) {
    return _DeleteTodo(
      todo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  Todo get todo;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createTodo(Todo todo),
    @required Result updateTodo(Todo todo),
    @required Result deleteTodo(Todo todo),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createTodo(Todo todo),
    Result updateTodo(Todo todo),
    Result deleteTodo(Todo todo),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createTodo(_CreateTodo value),
    @required Result updateTodo(_UpdateTodo value),
    @required Result deleteTodo(_DeleteTodo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createTodo(_CreateTodo value),
    Result updateTodo(_UpdateTodo value),
    Result deleteTodo(_DeleteTodo value),
    @required Result orElse(),
  });

  $TodoEventCopyWith<TodoEvent> get copyWith;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed ? _value.todo : todo as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$CreateTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$CreateTodoCopyWith(
          _CreateTodo value, $Res Function(_CreateTodo) then) =
      __$CreateTodoCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$CreateTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$CreateTodoCopyWith<$Res> {
  __$CreateTodoCopyWithImpl(
      _CreateTodo _value, $Res Function(_CreateTodo) _then)
      : super(_value, (v) => _then(v as _CreateTodo));

  @override
  _CreateTodo get _value => super._value as _CreateTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_CreateTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_CreateTodo implements _CreateTodo {
  const _$_CreateTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.createTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$CreateTodoCopyWith<_CreateTodo> get copyWith =>
      __$CreateTodoCopyWithImpl<_CreateTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createTodo(Todo todo),
    @required Result updateTodo(Todo todo),
    @required Result deleteTodo(Todo todo),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return createTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createTodo(Todo todo),
    Result updateTodo(Todo todo),
    Result deleteTodo(Todo todo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createTodo != null) {
      return createTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createTodo(_CreateTodo value),
    @required Result updateTodo(_UpdateTodo value),
    @required Result deleteTodo(_DeleteTodo value),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return createTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createTodo(_CreateTodo value),
    Result updateTodo(_UpdateTodo value),
    Result deleteTodo(_DeleteTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createTodo != null) {
      return createTodo(this);
    }
    return orElse();
  }
}

abstract class _CreateTodo implements TodoEvent {
  const factory _CreateTodo(Todo todo) = _$_CreateTodo;

  @override
  Todo get todo;
  @override
  _$CreateTodoCopyWith<_CreateTodo> get copyWith;
}

/// @nodoc
abstract class _$UpdateTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(
          _UpdateTodo value, $Res Function(_UpdateTodo) then) =
      __$UpdateTodoCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(
      _UpdateTodo _value, $Res Function(_UpdateTodo) _then)
      : super(_value, (v) => _then(v as _UpdateTodo));

  @override
  _UpdateTodo get _value => super._value as _UpdateTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_UpdateTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_UpdateTodo implements _UpdateTodo {
  const _$_UpdateTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.updateTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createTodo(Todo todo),
    @required Result updateTodo(Todo todo),
    @required Result deleteTodo(Todo todo),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createTodo(Todo todo),
    Result updateTodo(Todo todo),
    Result deleteTodo(Todo todo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createTodo(_CreateTodo value),
    @required Result updateTodo(_UpdateTodo value),
    @required Result deleteTodo(_DeleteTodo value),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createTodo(_CreateTodo value),
    Result updateTodo(_UpdateTodo value),
    Result deleteTodo(_DeleteTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements TodoEvent {
  const factory _UpdateTodo(Todo todo) = _$_UpdateTodo;

  @override
  Todo get todo;
  @override
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith;
}

/// @nodoc
abstract class _$DeleteTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(
          _DeleteTodo value, $Res Function(_DeleteTodo) then) =
      __$DeleteTodoCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(
      _DeleteTodo _value, $Res Function(_DeleteTodo) _then)
      : super(_value, (v) => _then(v as _DeleteTodo));

  @override
  _DeleteTodo get _value => super._value as _DeleteTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_DeleteTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_DeleteTodo implements _DeleteTodo {
  const _$_DeleteTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createTodo(Todo todo),
    @required Result updateTodo(Todo todo),
    @required Result deleteTodo(Todo todo),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createTodo(Todo todo),
    Result updateTodo(Todo todo),
    Result deleteTodo(Todo todo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createTodo(_CreateTodo value),
    @required Result updateTodo(_UpdateTodo value),
    @required Result deleteTodo(_DeleteTodo value),
  }) {
    assert(createTodo != null);
    assert(updateTodo != null);
    assert(deleteTodo != null);
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createTodo(_CreateTodo value),
    Result updateTodo(_UpdateTodo value),
    Result deleteTodo(_DeleteTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements TodoEvent {
  const factory _DeleteTodo(Todo todo) = _$_DeleteTodo;

  @override
  Todo get todo;
  @override
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith;
}

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UpdatedTodo updatedTodo(Todo todo) {
    return _UpdatedTodo(
      todo,
    );
  }

// ignore: unused_element
  _CreatedTodo createdTodo(Todo todo) {
    return _CreatedTodo(
      todo,
    );
  }

// ignore: unused_element
  _DeletedTodo deletedTodo(Todo todo) {
    return _DeletedTodo(
      todo,
    );
  }

// ignore: unused_element
  _LoadingTodo loadingTodo() {
    return const _LoadingTodo();
  }

// ignore: unused_element
  _FailedUpatingTodo failedUpdatingTodo(Exception e) {
    return _FailedUpatingTodo(
      e,
    );
  }

// ignore: unused_element
  _FailedCreatingTodo failedCreatingTodo(Exception e) {
    return _FailedCreatingTodo(
      e,
    );
  }

// ignore: unused_element
  _FailedDeletingTodo failedDeletingTodo(Exception e) {
    return _FailedDeletingTodo(
      e,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
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
    return 'TodoState.initial()';
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
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
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
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdatedTodoCopyWith<$Res> {
  factory _$UpdatedTodoCopyWith(
          _UpdatedTodo value, $Res Function(_UpdatedTodo) then) =
      __$UpdatedTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$UpdatedTodoCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$UpdatedTodoCopyWith<$Res> {
  __$UpdatedTodoCopyWithImpl(
      _UpdatedTodo _value, $Res Function(_UpdatedTodo) _then)
      : super(_value, (v) => _then(v as _UpdatedTodo));

  @override
  _UpdatedTodo get _value => super._value as _UpdatedTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_UpdatedTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
class _$_UpdatedTodo implements _UpdatedTodo {
  const _$_UpdatedTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoState.updatedTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$UpdatedTodoCopyWith<_UpdatedTodo> get copyWith =>
      __$UpdatedTodoCopyWithImpl<_UpdatedTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return updatedTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatedTodo != null) {
      return updatedTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return updatedTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatedTodo != null) {
      return updatedTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdatedTodo implements TodoState {
  const factory _UpdatedTodo(Todo todo) = _$_UpdatedTodo;

  Todo get todo;
  _$UpdatedTodoCopyWith<_UpdatedTodo> get copyWith;
}

/// @nodoc
abstract class _$CreatedTodoCopyWith<$Res> {
  factory _$CreatedTodoCopyWith(
          _CreatedTodo value, $Res Function(_CreatedTodo) then) =
      __$CreatedTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$CreatedTodoCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$CreatedTodoCopyWith<$Res> {
  __$CreatedTodoCopyWithImpl(
      _CreatedTodo _value, $Res Function(_CreatedTodo) _then)
      : super(_value, (v) => _then(v as _CreatedTodo));

  @override
  _CreatedTodo get _value => super._value as _CreatedTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_CreatedTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
class _$_CreatedTodo implements _CreatedTodo {
  const _$_CreatedTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoState.createdTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatedTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$CreatedTodoCopyWith<_CreatedTodo> get copyWith =>
      __$CreatedTodoCopyWithImpl<_CreatedTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return createdTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createdTodo != null) {
      return createdTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return createdTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createdTodo != null) {
      return createdTodo(this);
    }
    return orElse();
  }
}

abstract class _CreatedTodo implements TodoState {
  const factory _CreatedTodo(Todo todo) = _$_CreatedTodo;

  Todo get todo;
  _$CreatedTodoCopyWith<_CreatedTodo> get copyWith;
}

/// @nodoc
abstract class _$DeletedTodoCopyWith<$Res> {
  factory _$DeletedTodoCopyWith(
          _DeletedTodo value, $Res Function(_DeletedTodo) then) =
      __$DeletedTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$DeletedTodoCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$DeletedTodoCopyWith<$Res> {
  __$DeletedTodoCopyWithImpl(
      _DeletedTodo _value, $Res Function(_DeletedTodo) _then)
      : super(_value, (v) => _then(v as _DeletedTodo));

  @override
  _DeletedTodo get _value => super._value as _DeletedTodo;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_DeletedTodo(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
class _$_DeletedTodo implements _DeletedTodo {
  const _$_DeletedTodo(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoState.deletedTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletedTodo &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$DeletedTodoCopyWith<_DeletedTodo> get copyWith =>
      __$DeletedTodoCopyWithImpl<_DeletedTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return deletedTodo(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedTodo != null) {
      return deletedTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return deletedTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedTodo != null) {
      return deletedTodo(this);
    }
    return orElse();
  }
}

abstract class _DeletedTodo implements TodoState {
  const factory _DeletedTodo(Todo todo) = _$_DeletedTodo;

  Todo get todo;
  _$DeletedTodoCopyWith<_DeletedTodo> get copyWith;
}

/// @nodoc
abstract class _$LoadingTodoCopyWith<$Res> {
  factory _$LoadingTodoCopyWith(
          _LoadingTodo value, $Res Function(_LoadingTodo) then) =
      __$LoadingTodoCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingTodoCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$LoadingTodoCopyWith<$Res> {
  __$LoadingTodoCopyWithImpl(
      _LoadingTodo _value, $Res Function(_LoadingTodo) _then)
      : super(_value, (v) => _then(v as _LoadingTodo));

  @override
  _LoadingTodo get _value => super._value as _LoadingTodo;
}

/// @nodoc
class _$_LoadingTodo implements _LoadingTodo {
  const _$_LoadingTodo();

  @override
  String toString() {
    return 'TodoState.loadingTodo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingTodo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return loadingTodo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingTodo != null) {
      return loadingTodo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return loadingTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingTodo != null) {
      return loadingTodo(this);
    }
    return orElse();
  }
}

abstract class _LoadingTodo implements TodoState {
  const factory _LoadingTodo() = _$_LoadingTodo;
}

/// @nodoc
abstract class _$FailedUpatingTodoCopyWith<$Res> {
  factory _$FailedUpatingTodoCopyWith(
          _FailedUpatingTodo value, $Res Function(_FailedUpatingTodo) then) =
      __$FailedUpatingTodoCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$FailedUpatingTodoCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements _$FailedUpatingTodoCopyWith<$Res> {
  __$FailedUpatingTodoCopyWithImpl(
      _FailedUpatingTodo _value, $Res Function(_FailedUpatingTodo) _then)
      : super(_value, (v) => _then(v as _FailedUpatingTodo));

  @override
  _FailedUpatingTodo get _value => super._value as _FailedUpatingTodo;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_FailedUpatingTodo(
      e == freezed ? _value.e : e as Exception,
    ));
  }
}

/// @nodoc
class _$_FailedUpatingTodo implements _FailedUpatingTodo {
  const _$_FailedUpatingTodo(this.e) : assert(e != null);

  @override
  final Exception e;

  @override
  String toString() {
    return 'TodoState.failedUpdatingTodo(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedUpatingTodo &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  _$FailedUpatingTodoCopyWith<_FailedUpatingTodo> get copyWith =>
      __$FailedUpatingTodoCopyWithImpl<_FailedUpatingTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedUpdatingTodo(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedUpdatingTodo != null) {
      return failedUpdatingTodo(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedUpdatingTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedUpdatingTodo != null) {
      return failedUpdatingTodo(this);
    }
    return orElse();
  }
}

abstract class _FailedUpatingTodo implements TodoState {
  const factory _FailedUpatingTodo(Exception e) = _$_FailedUpatingTodo;

  Exception get e;
  _$FailedUpatingTodoCopyWith<_FailedUpatingTodo> get copyWith;
}

/// @nodoc
abstract class _$FailedCreatingTodoCopyWith<$Res> {
  factory _$FailedCreatingTodoCopyWith(
          _FailedCreatingTodo value, $Res Function(_FailedCreatingTodo) then) =
      __$FailedCreatingTodoCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$FailedCreatingTodoCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements _$FailedCreatingTodoCopyWith<$Res> {
  __$FailedCreatingTodoCopyWithImpl(
      _FailedCreatingTodo _value, $Res Function(_FailedCreatingTodo) _then)
      : super(_value, (v) => _then(v as _FailedCreatingTodo));

  @override
  _FailedCreatingTodo get _value => super._value as _FailedCreatingTodo;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_FailedCreatingTodo(
      e == freezed ? _value.e : e as Exception,
    ));
  }
}

/// @nodoc
class _$_FailedCreatingTodo implements _FailedCreatingTodo {
  const _$_FailedCreatingTodo(this.e) : assert(e != null);

  @override
  final Exception e;

  @override
  String toString() {
    return 'TodoState.failedCreatingTodo(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedCreatingTodo &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  _$FailedCreatingTodoCopyWith<_FailedCreatingTodo> get copyWith =>
      __$FailedCreatingTodoCopyWithImpl<_FailedCreatingTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedCreatingTodo(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedCreatingTodo != null) {
      return failedCreatingTodo(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedCreatingTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedCreatingTodo != null) {
      return failedCreatingTodo(this);
    }
    return orElse();
  }
}

abstract class _FailedCreatingTodo implements TodoState {
  const factory _FailedCreatingTodo(Exception e) = _$_FailedCreatingTodo;

  Exception get e;
  _$FailedCreatingTodoCopyWith<_FailedCreatingTodo> get copyWith;
}

/// @nodoc
abstract class _$FailedDeletingTodoCopyWith<$Res> {
  factory _$FailedDeletingTodoCopyWith(
          _FailedDeletingTodo value, $Res Function(_FailedDeletingTodo) then) =
      __$FailedDeletingTodoCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$FailedDeletingTodoCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements _$FailedDeletingTodoCopyWith<$Res> {
  __$FailedDeletingTodoCopyWithImpl(
      _FailedDeletingTodo _value, $Res Function(_FailedDeletingTodo) _then)
      : super(_value, (v) => _then(v as _FailedDeletingTodo));

  @override
  _FailedDeletingTodo get _value => super._value as _FailedDeletingTodo;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_FailedDeletingTodo(
      e == freezed ? _value.e : e as Exception,
    ));
  }
}

/// @nodoc
class _$_FailedDeletingTodo implements _FailedDeletingTodo {
  const _$_FailedDeletingTodo(this.e) : assert(e != null);

  @override
  final Exception e;

  @override
  String toString() {
    return 'TodoState.failedDeletingTodo(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedDeletingTodo &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  _$FailedDeletingTodoCopyWith<_FailedDeletingTodo> get copyWith =>
      __$FailedDeletingTodoCopyWithImpl<_FailedDeletingTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updatedTodo(Todo todo),
    @required Result createdTodo(Todo todo),
    @required Result deletedTodo(Todo todo),
    @required Result loadingTodo(),
    @required Result failedUpdatingTodo(Exception e),
    @required Result failedCreatingTodo(Exception e),
    @required Result failedDeletingTodo(Exception e),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedDeletingTodo(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedTodo(Todo todo),
    Result createdTodo(Todo todo),
    Result deletedTodo(Todo todo),
    Result loadingTodo(),
    Result failedUpdatingTodo(Exception e),
    Result failedCreatingTodo(Exception e),
    Result failedDeletingTodo(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDeletingTodo != null) {
      return failedDeletingTodo(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedTodo(_UpdatedTodo value),
    @required Result createdTodo(_CreatedTodo value),
    @required Result deletedTodo(_DeletedTodo value),
    @required Result loadingTodo(_LoadingTodo value),
    @required Result failedUpdatingTodo(_FailedUpatingTodo value),
    @required Result failedCreatingTodo(_FailedCreatingTodo value),
    @required Result failedDeletingTodo(_FailedDeletingTodo value),
  }) {
    assert(initial != null);
    assert(updatedTodo != null);
    assert(createdTodo != null);
    assert(deletedTodo != null);
    assert(loadingTodo != null);
    assert(failedUpdatingTodo != null);
    assert(failedCreatingTodo != null);
    assert(failedDeletingTodo != null);
    return failedDeletingTodo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedTodo(_UpdatedTodo value),
    Result createdTodo(_CreatedTodo value),
    Result deletedTodo(_DeletedTodo value),
    Result loadingTodo(_LoadingTodo value),
    Result failedUpdatingTodo(_FailedUpatingTodo value),
    Result failedCreatingTodo(_FailedCreatingTodo value),
    Result failedDeletingTodo(_FailedDeletingTodo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDeletingTodo != null) {
      return failedDeletingTodo(this);
    }
    return orElse();
  }
}

abstract class _FailedDeletingTodo implements TodoState {
  const factory _FailedDeletingTodo(Exception e) = _$_FailedDeletingTodo;

  Exception get e;
  _$FailedDeletingTodoCopyWith<_FailedDeletingTodo> get copyWith;
}
