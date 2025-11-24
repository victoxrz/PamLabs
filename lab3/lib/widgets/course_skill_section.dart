import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/section.dart';
import 'package:lab2/widgets/skill_button.dart';

class CourseSkillSection extends StatelessWidget {
  const CourseSkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return Obx(() {
      final skills = courseController.courseDetail.value?.skills ?? [];

      if (skills.isEmpty) {
        return const SizedBox.shrink();
      }

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
          children: [
            for (var skill in skills)
              SizedBox(
                height: 32,
                child: SkillButton(label: skill, onPressed: () {}),
              ),
          ],
        ),
      );
    });
  }
}
