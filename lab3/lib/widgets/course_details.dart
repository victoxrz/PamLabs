import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/section.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return Obx(() {
      final course = courseController.courseDetail.value;

      if (course == null) {
        return const SizedBox.shrink();
      }

      return Section(
        title: Text(
          'Course Details',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: course.description),
              TextSpan(
                text: ' Read more...',
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: AppColors.grayColor,
              height: 1.3,
            ),
          ),
          textAlign: TextAlign.justify,
        ),
      );
    });
  }
}
