import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  final String id;
  final String title;
  final String institute;
  final double rating;
  final int? progress;
  final String image;

  const Course({
    required this.id,
    required this.title,
    required this.institute,
    required this.rating,
    this.progress,
    required this.image,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);

  Course copyWith({
    String? id,
    String? title,
    String? institute,
    double? rating,
    int? progress,
    String? image,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      institute: institute ?? this.institute,
      rating: rating ?? this.rating,
      progress: progress ?? this.progress,
      image: image ?? this.image,
    );
  }
}
