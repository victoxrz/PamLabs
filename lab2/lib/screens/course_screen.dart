import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/resources/app_icons.dart';
import 'package:lab2/widgets/course_details.dart';
import 'package:lab2/widgets/course_details_table.dart';
import 'package:lab2/widgets/course_header.dart';
import 'package:lab2/widgets/course_skill_section.dart';
import 'package:lab2/widgets/course_video.dart';
import 'package:lab2/widgets/skill_button.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width.toInt();

    return ListView(
      children: [
        CourseVideo(imageUrl: "https://picsum.photos/$screenWidth/200.jpg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeader(
                title: 'Typography and Layout Design',
                author: 'Visual Communication College',
                price: '35\$',
                studentsEnrolled: '3.4k students already enrolled',
              ),
              SizedBox(height: 16),
              CourseDetails(
                courseDescription: [
                  TextSpan(
                    text:
                        'Visual Communication College\'s Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts ',
                  ),
                  TextSpan(
                    text: 'Read more...',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CourseDetailsTable(
                  items: [
                    (
                      iconPath: AppIcons.bookFilled,
                      title: 'Lectures',
                      subtitle: '50+ Lectures',
                    ),
                    (
                      iconPath: AppIcons.timeFilled,
                      title: 'Learning Time',
                      subtitle: '4 weeks',
                    ),
                    (
                      iconPath: AppIcons.awardFilled,
                      title: 'Certification',
                      subtitle: 'Online Certificate',
                    ),
                  ],
                ),
              ),
              CourseSkillSection(
                buttons: [
                  SkillButton(label: 'Typography', onPressed: () {}),
                  SkillButton(label: 'Layout composition', onPressed: () {}),
                  SkillButton(label: 'Branding', onPressed: () {}),
                  SkillButton(label: 'Visual communication', onPressed: () {}),
                  SkillButton(label: 'Editorial design', onPressed: () {}),
                ],
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
            ],
          ),
        ),
      ],
    );
  }
}
