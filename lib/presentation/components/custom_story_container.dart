import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:facebook_home_responsive_ui/data/models/story_model.dart';
import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/profile_avatar.dart';
import 'package:flutter/material.dart';

import 'custom_shimmer_widget.dart';

class CustomStoryContainer extends StatelessWidget {
  final bool isAddStory;
  final UserModel currentUser;
  final StoryModel story;

  CustomStoryContainer({
    this.isAddStory = false,
    required this.currentUser,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
            height: isAddStory
                ? MediaQuery.of(context).size.height * 0.12
                : double.infinity,
            width: 110.0,
            fit: BoxFit.fill,
            memCacheHeight: (MediaQuery.of(context).size.height * 0.6).toInt(),
            placeholder: (_, placeHolder) =>
                CustomShimmerWidget(height: 420),
            errorWidget: (context, x, y) =>
                CustomShimmerWidget(height: 420),


          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
            // gradient: Constants.storyGradient,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(width: 1.0, color: Colors.grey.shade200),
          ),
        ),
        Positioned(
          top: isAddStory ? 30.0 : 8.0,
          left: isAddStory ? 30.0 : 8.0,
          right: isAddStory ? 30.0 : 0.0,
          bottom: isAddStory ? 10.0 : 0.0,
          child: isAddStory
              ? Container(
                  // height: 40.0,
                  // width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add),
                    iconSize: 30.0,
                    color: Constants.facebookBlue,
                    onPressed: () => print('Add to Story'),
                  ),
                )
              : ProfileAvatar(
                  imageUrl: story.user.imageUrl,
                  hasBorder: !story.isViewed,
                ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          right: 8.0,
          child: Text(
            isAddStory ? 'Create story' : story.user.name,
            style: TextStyle(
              color: isAddStory ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
