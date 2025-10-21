import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/resources/app_icons.dart';

class CourseVideo extends StatelessWidget {
  const CourseVideo({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
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
        Positioned.fill(child: Center(child: SvgPicture.asset(AppIcons.play))),
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
  }
}
