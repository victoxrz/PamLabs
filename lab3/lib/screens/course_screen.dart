import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/course_card.dart';
import 'package:lab2/widgets/course_details.dart';
import 'package:lab2/widgets/course_details_table.dart';
import 'package:lab2/widgets/course_header.dart';
import 'package:lab2/widgets/course_instructor_section.dart';
import 'package:lab2/widgets/course_lessons_section.dart';
import 'package:lab2/widgets/course_skill_section.dart';
import 'package:lab2/widgets/course_video.dart';
import 'package:lab2/widgets/section.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return ListView(
      children: [
        CourseVideo(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeader(),
              SizedBox(height: 16),
              CourseDetails(),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CourseDetailsTable(),
              ),
              CourseSkillSection(),
              SizedBox(height: 24),
              CourseInstructorSection(),
              SizedBox(height: 24),
              CourseLessonsSection(),
              SizedBox(height: 24),
              Section(
                title: Text(
                  'Related Courses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                ),
                child: Obx(() {
                  final relatedCourses =
                      courseController.courseDetail.value?.relatedCourses ?? [];

                  if (relatedCourses.isEmpty) {
                    return const SizedBox.shrink();
                  }

                  return SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: relatedCourses.map((course) {
                        return CourseCard(
                          image: Image.network(
                            course.image,
                            width: 130,
                            height: 92,
                            fit: BoxFit.cover,
                          ),
                          title: course.title,
                          author: course.institute,
                          rating: course.rating,
                        );
                      }).toList(),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Color(0xFFD9EFF2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(320, 50),
                  ),
                  child: Text('ENROLL NOW'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Start your 7-day free Trial',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.grayColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }
}
