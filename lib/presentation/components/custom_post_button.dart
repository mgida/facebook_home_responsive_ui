import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomPostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback onTap;

  CustomPostButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                CustomText(title: label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
