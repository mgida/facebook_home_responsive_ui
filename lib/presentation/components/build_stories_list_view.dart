import 'package:facebook_home_responsive_ui/data/models/story_model.dart';
import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_story_container.dart';
import 'package:flutter/material.dart';

class BuildStoriesListView extends StatelessWidget {
  final List<StoryModel> stories;
  final UserModel currentUser;

  BuildStoriesListView({required this.stories, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      itemCount: 1 + stories.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CustomStoryContainer(
              isAddStory: true,
              currentUser: currentUser,
              story: stories[index],
            ),
          );
        }
        final story = stories[index - 1];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: CustomStoryContainer(
            story: story,
            currentUser: currentUser,
          ),
        );
      },
    );
  }
}
