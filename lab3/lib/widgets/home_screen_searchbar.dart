import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/resources/app_icons.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFFD9D9D9), width: 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 18),
      height: 32,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Search',
              style: TextStyle(fontSize: 14, color: AppColors.grayColor),
            ),
          ),
          SvgPicture.asset(AppIcons.search),
        ],
      ),
    );
  }
}
