import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/resources/app_colors.dart';

class CourseTableRow extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;

  const CourseTableRow({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(right: 12),
          child: SvgPicture.asset(iconPath),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.secondaryColor,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.grayColor,
          ),
        ),
      ],
    );
  }
}
