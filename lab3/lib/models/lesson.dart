import 'package:json_annotation/json_annotation.dart';

part 'lesson.g.dart';

@JsonSerializable()
class Lesson {
  final String id;
  final String title;
  final String duration;
  final bool isPreview;

  const Lesson({
    required this.id,
    required this.title,
    required this.duration,
    required this.isPreview,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
