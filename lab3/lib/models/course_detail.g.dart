// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetail _$CourseDetailFromJson(Map<String, dynamic> json) => CourseDetail(
  id: json['id'] as String,
  title: json['title'] as String,
  institute: json['institute'] as String,
  price: (json['price'] as num).toInt(),
  currency: json['currency'] as String,
  enrolledStudents: (json['enrolledStudents'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  lectures: (json['lectures'] as num).toInt(),
  duration: json['duration'] as String,
  certification: json['certification'] as String,
  thumbnail: json['thumbnail'] as String,
  previewVideo: json['previewVideo'] as String,
  description: json['description'] as String,
  skills: (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
  instructor: Instructor.fromJson(json['instructor'] as Map<String, dynamic>),
  lessons: (json['lessons'] as List<dynamic>)
      .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
      .toList(),
  relatedCourses: (json['relatedCourses'] as List<dynamic>)
      .map((e) => Course.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CourseDetailToJson(CourseDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'institute': instance.institute,
      'price': instance.price,
      'currency': instance.currency,
      'enrolledStudents': instance.enrolledStudents,
      'rating': instance.rating,
      'lectures': instance.lectures,
      'duration': instance.duration,
      'certification': instance.certification,
      'thumbnail': instance.thumbnail,
      'previewVideo': instance.previewVideo,
      'description': instance.description,
      'skills': instance.skills,
      'instructor': instance.instructor.toJson(),
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'relatedCourses': instance.relatedCourses.map((e) => e.toJson()).toList(),
    };
