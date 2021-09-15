import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_create_room_button.dart';
import 'package:facebook_home_responsive_ui/presentation/components/profile_avatar.dart';
import 'package:flutter/material.dart';

class BuildRoomsListView extends StatelessWidget {
  final List<UserModel> onlineUsers;

  BuildRoomsListView({required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 4.0,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 1 + onlineUsers.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomCreateRoomButton(),
          );
        }
        final UserModel user = onlineUsers[index - 1];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ProfileAvatar(
            imageUrl: user.imageUrl,
            isActive: true,
          ),
        );
      },
    );
  }
}
