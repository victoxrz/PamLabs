import 'package:flutter/material.dart';
import 'package:lab2/resources/app_colors.dart';

class SkillButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const SkillButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        side: const BorderSide(color: AppColors.lightGrayColor),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }
}
