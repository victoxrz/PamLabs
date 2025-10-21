import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/widgets/section.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key, required this.courseDescription});

  final List<InlineSpan> courseDescription;

  @override
  Widget build(BuildContext context) {
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
          children: courseDescription,
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
  }
}
