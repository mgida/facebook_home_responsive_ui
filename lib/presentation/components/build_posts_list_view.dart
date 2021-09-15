import 'package:facebook_home_responsive_ui/data/models/post_model.dart';
import 'package:flutter/material.dart';
import 'custom_post_container.dart';


class BuildPostsListView extends StatelessWidget {
  final List<PostModel> posts;

  BuildPostsListView({required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return CustomPostContainer(post: post);
      },
    );
  }
}
