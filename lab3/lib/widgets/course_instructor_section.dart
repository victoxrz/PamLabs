import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/section.dart';

class CourseInstructorSection extends StatelessWidget {
  const CourseInstructorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return Obx(() {
      final instructor = courseController.courseDetail.value?.instructor;

      if (instructor == null) {
        return const SizedBox.shrink();
      }

      return Section(
        title: Text(
          'Instructor',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                instructor.image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    instructor.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    instructor.title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grayColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructor.bio,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
