import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_home_responsive_ui/data/models/post_model.dart';
import 'package:facebook_home_responsive_ui/presentation/components/build_post_info.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:flutter/material.dart';

import 'build_post_header.dart';
import 'custom_shimmer_widget.dart';

class CustomPostContainer extends StatelessWidget {
  final PostModel post;

  CustomPostContainer({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildPostHeader(post: post),
                const SizedBox(height: 4.0),
                CustomText(title: post.caption),
                post.imageUrl != null
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6.0),
              ],
            ),
          ),
          post.imageUrl != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CachedNetworkImage(
                    imageUrl: post.imageUrl!,
                    fit: BoxFit.cover,
                    memCacheHeight: (MediaQuery.of(context).size.height * 0.6).toInt(),
                    placeholder: (_, placeHolder) =>
                        CustomShimmerWidget(height: 420),
                    errorWidget: (context, x, y) =>
                        CustomShimmerWidget(height: 420),
                  ),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: BuildPostInfo(
              post: post,
            ),
          ),
        ],
      ),
    );
  }
}
