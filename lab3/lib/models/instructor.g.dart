// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Instructor _$InstructorFromJson(Map<String, dynamic> json) => Instructor(
  name: json['name'] as String,
  title: json['title'] as String,
  bio: json['bio'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$InstructorToJson(Instructor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'bio': instance.bio,
      'image': instance.image,
    };
