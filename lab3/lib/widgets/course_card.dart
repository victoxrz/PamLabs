import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/resources/app_icons.dart';

class CourseCard extends StatelessWidget {
  final Image image;
  final String title;
  final String author;
  final double rating;
  final bool isBookmarked;

  const CourseCard({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    this.isBookmarked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 180,
      margin: EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.all(0.0),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: image,
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: SvgPicture.asset(
                      isBookmarked
                          ? AppIcons.bookmarkFilled
                          : AppIcons.bookmarkOutlined,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    author,
                    style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.secondaryColor,
                        size: 10,
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 6,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
