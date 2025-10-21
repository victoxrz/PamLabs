import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/section.dart';
import 'package:lab2/widgets/skill_button.dart';

class CourseSkillSection extends StatelessWidget {
  const CourseSkillSection({super.key, required this.buttons});

  final List<SkillButton> buttons;

  @override
  Widget build(BuildContext context) {
    return Section(
      title: Text(
        'Skills',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryColor,
        ),
      ),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 12.0,
        children: [for (var btn in buttons) SizedBox(height: 32, child: btn)],
      ),
    );
  }
}
