// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$_$_TodoFromJson(Map<String, dynamic> json) {
  return _$_Todo(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    expiryDate: json['expiryDate'] == null
        ? null
        : DateTime.parse(json['expiryDate'] as String),
    color: json['color'] as String,
    isComplete: json['isComplete'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'color': instance.color,
      'isComplete': instance.isComplete,
    };
