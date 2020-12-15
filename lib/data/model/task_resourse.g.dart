// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_resourse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResourse _$TaskResourseFromJson(Map<String, dynamic> json) {
  return TaskResourse(
    id: json['id'] as String,
    createat: json['createat'] as String,
    description: json['description'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$TaskResourseToJson(TaskResourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createat': instance.createat,
      'description': instance.description,
      'title': instance.title,
    };
