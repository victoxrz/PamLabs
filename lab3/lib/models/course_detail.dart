import 'package:json_annotation/json_annotation.dart';
import 'package:lab2/models/course.dart';
import 'package:lab2/models/instructor.dart';
import 'package:lab2/models/lesson.dart';

part 'course_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class CourseDetail {
  final String id;
  final String title;
  final String institute;
  final int price;
  final String currency;
  final int enrolledStudents;
  final double rating;
  final int lectures;
  final String duration;
  final String certification;
  final String thumbnail;
  final String previewVideo;
  final String description;
  final List<String> skills;
  final Instructor instructor;
  final List<Lesson> lessons;
  final List<Course> relatedCourses;

  const CourseDetail({
    required this.id,
    required this.title,
    required this.institute,
    required this.price,
    required this.currency,
    required this.enrolledStudents,
    required this.rating,
    required this.lectures,
    required this.duration,
    required this.certification,
    required this.thumbnail,
    required this.previewVideo,
    required this.description,
    required this.skills,
    required this.instructor,
    required this.lessons,
    required this.relatedCourses,
  });

  factory CourseDetail.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailToJson(this);
}
