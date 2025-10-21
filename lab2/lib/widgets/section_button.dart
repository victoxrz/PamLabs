import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          decoration: TextDecoration.underline,
          decorationColor: Color(0xFF6C6C6C),
          color: Color(0xFF6C6C6C),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
