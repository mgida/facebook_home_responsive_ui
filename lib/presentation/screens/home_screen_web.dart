import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/logic/post_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/room_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/story_cubit.dart';
import 'package:facebook_home_responsive_ui/presentation/components/contacts.dart';
import 'package:facebook_home_responsive_ui/presentation/components/create_post_container.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_post_container.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_text.dart';
import 'package:facebook_home_responsive_ui/presentation/components/more_options.dart';
import 'package:facebook_home_responsive_ui/presentation/components/rooms.dart';
import 'package:facebook_home_responsive_ui/presentation/components/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenWeb extends StatelessWidget {
  final TrackingScrollController trackingScrollController;

  HomeScreenWeb({required this.trackingScrollController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: MoreOptions(),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 600.0,
          child: CustomScrollView(
            controller: trackingScrollController,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                sliver: SliverToBoxAdapter(
                  child: BlocBuilder<StoryCubit, StoryState>(
                    builder: (context, state) {
                      if (state is StoryLoaded) {
                        final stories = state.stories;
                        return Stories(
                          currentUser: currentUser,
                          stories: stories,
                        );
                      } else if (state is StoryFailure) {
                        return Container(
                          child: CustomText(title: '${state.errorMsg}'),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CreatePostContainer(currentUser: currentUser),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: BlocBuilder<RoomCubit, RoomState>(
                    builder: (context, state) {
                      final roomCubit = BlocProvider.of<RoomCubit>(context);
                      if (state is RoomLoaded) {
                        final onlineUsers = roomCubit.rooms;
                        return Rooms(onlineUsers: onlineUsers);
                      } else if (state is RoomFailure) {
                        return Container(
                          child: CustomText(title: '${state.errorMsg}'),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ),
              BlocConsumer<PostCubit, PostState>(
                listener: (context, state) {
                  if (state is! PostLoading) {
                    Future.delayed(
                      Duration(seconds: 2),
                    );
                  }
                },
                builder: (context, state) {
                  final postCubit = BlocProvider.of<PostCubit>(context);
                  if (state is PostLoaded) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final post = postCubit.posts[index];
                          return CustomPostContainer(post: post);
                        },
                        childCount: postCubit.posts.length,
                      ),
                    );
                  } else if (state is PostFailure) {
                    return Container(
                      child: CustomText(title: '${state.errorMsg}'),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Contacts(),
            ),
          ),
        ),
      ],
    );
  }
}
