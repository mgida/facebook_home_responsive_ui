import 'package:facebook_home_responsive_ui/data/models/story_model.dart';
import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/build_stories_list_view.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final UserModel currentUser;
  final List<StoryModel> stories;

  Stories({
    required this.currentUser,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: BuildStoriesListView(
        stories: stories,
        currentUser: currentUser,
      ),
    );
  }
}
