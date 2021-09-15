import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/presentation/components/user_card.dart';
import 'package:flutter/material.dart';
import 'build_option_item.dart';

class BuildMoreOptionsListView extends StatelessWidget {
  final List<List> moreOptions;

  BuildMoreOptionsListView({required this.moreOptions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1 + moreOptions.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: UserCard(user: currentUser),
          );
        }
        final option = moreOptions[index - 1];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: BuildOptionItem(
            icon: option[0],
            color: option[1],
            label: option[2],
          ),
        );
      },
    );
  }
}
