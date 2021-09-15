import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: MaterialButton(
        onPressed: () {},
        minWidth: 80,
        height: 20,
        color: Colors.lightBlue.shade50,
        child: CustomText(
          title: 'Create Room',
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
