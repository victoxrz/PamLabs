import 'package:flutter/material.dart';
import 'package:lab2/widgets/course_table_item.dart';

class CourseDetailsTable extends StatelessWidget {
  const CourseDetailsTable({super.key, required this.items});

  final List<({String iconPath, String title, String subtitle})> items;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(5),
        2: FlexColumnWidth(3),
      },
      children: [
        for (var item in items)
          TableRow(
            children: [
              CourseTableRow(
                iconPath: item.iconPath,
                title: item.title,
                subtitle: item.subtitle,
              ),
            ],
          ),
      ],
    );
  }
}
