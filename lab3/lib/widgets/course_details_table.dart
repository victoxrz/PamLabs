import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/resources/app_colors.dart';

class CourseDetailsTable extends StatelessWidget {
  const CourseDetailsTable({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseController courseController = Get.find<CourseController>();

    return Obx(() {
      final items = courseController.getCourseDetailsTableItems();

      if (items.isEmpty) {
        return const SizedBox.shrink();
      }

      return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(5),
          2: FlexColumnWidth(3),
        },
        children: [
          for (var item in items)
            TableRow(
              children: [
                Container(
                  height: 32,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset(item.iconPath),
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryColor,
                  ),
                ),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayColor,
                  ),
                ),
              ],
            ),
        ],
      );
    });
  }
}
