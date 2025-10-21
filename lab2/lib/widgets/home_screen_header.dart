import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/resources/app_colors.dart';
import 'package:lab2/resources/app_icons.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: 'Welcome ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: 'Sindra',
                style: TextStyle(color: AppColors.secondaryColor),
              ),
            ],
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(AppIcons.notification),
          onPressed: () {},
        ),
      ],
    );
  }
}
