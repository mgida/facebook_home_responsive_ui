import 'package:facebook_home_responsive_ui/data/models/post_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_post_button.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class BuildPostInfo extends StatelessWidget {
  final PostModel post;

  BuildPostInfo({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Constants.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: CustomText(
                title: '${post.likes}',
                color: Colors.grey.shade600,
              ),
            ),
            CustomText(
              title: '${post.comments} Comments',
              color: Colors.grey.shade600,
            ),
            const SizedBox(width: 8.0),
            CustomText(
              title: '${post.shares} Shares',
              color: Colors.grey.shade600,
            ),
          ],
        ),
        const Divider(),
        Container(
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomPostButton(
                icon: Icon(
                  Icons.thumb_up_alt_rounded,
                  color: Colors.grey.shade600,
                  size: 20.0,
                ),
                label: 'Like',
                onTap: () {},
              ),
              CustomPostButton(
                icon: Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.grey.shade600,
                  size: 20.0,
                ),
                label: 'Comment',
                onTap: () {},
              ),
              CustomPostButton(
                icon: Icon(
                  //  MdiIcons.shareOutline,
                  Icons.share,
                  color: Colors.grey.shade600,
                  size: 25.0,
                ),
                label: 'Share',
                onTap: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
