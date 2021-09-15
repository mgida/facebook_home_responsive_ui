import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomPostTypeButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final VoidCallback onPressed;

  CustomPostTypeButton(
      {required this.icon,
      required this.color,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: color,
            size: 20.0,
          ),
          const SizedBox(
            width: 3.0,
          ),
          CustomText(title: title),
        ],
      ),
    );
  }
}
