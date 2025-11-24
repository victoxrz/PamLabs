import 'package:json_annotation/json_annotation.dart';

part 'instructor.g.dart';

@JsonSerializable()
class Instructor {
  final String name;
  final String title;
  final String bio;
  final String image;

  const Instructor({
    required this.name,
    required this.title,
    required this.bio,
    required this.image,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) =>
      _$InstructorFromJson(json);

  Map<String, dynamic> toJson() => _$InstructorToJson(this);
}
