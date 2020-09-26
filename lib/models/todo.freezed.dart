// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

// ignore: unused_element
  _Todo call(
      {String id,
      String title,
      String description,
      DateTime expiryDate,
      String color,
      bool isComplete = false}) {
    return _Todo(
      id: id,
      title: title,
      description: description,
      expiryDate: expiryDate,
      color: color,
      isComplete: isComplete,
    );
  }

// ignore: unused_element
  Todo fromJson(Map<String, Object> json) {
    return Todo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  String get id;
  String get title;
  String get description;
  DateTime get expiryDate;
  String get color;
  bool get isComplete;

  Map<String, dynamic> toJson();
  $TodoCopyWith<Todo> get copyWith;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      DateTime expiryDate,
      String color,
      bool isComplete});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object expiryDate = freezed,
    Object color = freezed,
    Object isComplete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      expiryDate:
          expiryDate == freezed ? _value.expiryDate : expiryDate as DateTime,
      color: color == freezed ? _value.color : color as String,
      isComplete:
          isComplete == freezed ? _value.isComplete : isComplete as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      DateTime expiryDate,
      String color,
      bool isComplete});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object expiryDate = freezed,
    Object color = freezed,
    Object isComplete = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      expiryDate:
          expiryDate == freezed ? _value.expiryDate : expiryDate as DateTime,
      color: color == freezed ? _value.color : color as String,
      isComplete:
          isComplete == freezed ? _value.isComplete : isComplete as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Todo with DiagnosticableTreeMixin implements _Todo {
  _$_Todo(
      {this.id,
      this.title,
      this.description,
      this.expiryDate,
      this.color,
      this.isComplete = false})
      : assert(isComplete != null);

  factory _$_Todo.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime expiryDate;
  @override
  final String color;
  @JsonKey(defaultValue: false)
  @override
  final bool isComplete;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, title: $title, description: $description, expiryDate: $expiryDate, color: $color, isComplete: $isComplete)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('expiryDate', expiryDate))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('isComplete', isComplete));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(isComplete);

  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  factory _Todo(
      {String id,
      String title,
      String description,
      DateTime expiryDate,
      String color,
      bool isComplete}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get expiryDate;
  @override
  String get color;
  @override
  bool get isComplete;
  @override
  _$TodoCopyWith<_Todo> get copyWith;
}
