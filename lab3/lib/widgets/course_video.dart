import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_icons.dart';

class CourseVideo extends StatelessWidget {
  const CourseVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return Obx(() {
      final course = courseController.courseDetail.value;

      if (course == null) {
        return Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey[300],
          child: const Center(child: CircularProgressIndicator()),
        );
      }

      return Stack(
        children: [
          Image.network(
            course.thumbnail,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 1.5,
                  colors: [
                    Color(0xFF018697).withValues(alpha: 0.38),
                    Color(0xFF00434C),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(child: SvgPicture.asset(AppIcons.play)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back, color: Color(0xFFD9EFF2)),
                SvgPicture.asset(AppIcons.bookmarkWithBackground),
              ],
            ),
          ),
        ],
      );
    });
  }
}
