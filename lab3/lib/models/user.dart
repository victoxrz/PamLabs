import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  final int notifications;

  const User({required this.name, required this.notifications});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({String? name, int? notifications}) {
    return User(
      name: name ?? this.name,
      notifications: notifications ?? this.notifications,
    );
  }
}
