import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomOnlineCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0,
      width: 15.0,
      decoration: BoxDecoration(
        color: Constants.online,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
