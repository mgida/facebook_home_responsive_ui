import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/user_card.dart';
import 'package:flutter/material.dart';

class BuildContactsListView extends StatelessWidget {
  final List<UserModel> users;

  BuildContactsListView({
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        final user = users[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: UserCard(user: user),
        );
      },
    );
  }
}
