// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
  id: json['id'] as String,
  title: json['title'] as String,
  institute: json['institute'] as String,
  rating: (json['rating'] as num).toDouble(),
  progress: (json['progress'] as num?)?.toInt(),
  image: json['image'] as String,
);

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'institute': instance.institute,
  'rating': instance.rating,
  'progress': instance.progress,
  'image': instance.image,
};
