import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_post_type_button.dart';
import 'package:facebook_home_responsive_ui/presentation/components/profile_avatar.dart';
import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final UserModel currentUser;

  CreatePostContainer({
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: Container(
                  height: 35.0,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: Constants.kTextFieldDecoration.copyWith(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 20.0, thickness: 0.5),
          Container(
            height: 35.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomPostTypeButton(
                  icon: Icons.videocam,
                  color: Colors.red,
                  title: 'Live',
                  onPressed: () {},
                ),
                const VerticalDivider(width: 8.0),
                CustomPostTypeButton(
                  icon: Icons.photo_library,
                  color: Colors.green,
                  title: 'Photo',
                  onPressed: () {},
                ),
                const VerticalDivider(width: 8.0),
                CustomPostTypeButton(
                  icon: Icons.video_call,
                  color: Colors.purple,
                  title: 'Room',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
