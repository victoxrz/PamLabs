import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';

class Section extends StatelessWidget {
  final Widget title;
  final Widget? action;
  final Widget child;

  const Section({
    super.key,
    required this.title,
    required this.child,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            // left: 21.0,
            bottom: 8.0,
            top: 12.0,
            right: 21.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title,
              SizedBox(height: 24, child: action ?? SizedBox.shrink()),
            ],
          ),
        ),
        child,
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  final Widget? action;

  const SectionTitle({super.key, required this.text, this.action});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 21.0, bottom: 8.0, top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 24, child: action ?? SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
