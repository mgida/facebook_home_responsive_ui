import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/logic/post_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/room_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/story_cubit.dart';
import 'package:facebook_home_responsive_ui/presentation/components/contacts.dart';
import 'package:facebook_home_responsive_ui/presentation/components/create_post_container.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_post_container.dart';
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
                      final storyCubit = BlocProvider.of<StoryCubit>(context);
                      return Stories(
                        currentUser: currentUser,
                        stories: storyCubit.storiesCubit,
                      );
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
                      return Rooms(onlineUsers: roomCubit.onlineUsersCubit);
                    },
                  ),
                ),
              ),
              BlocConsumer<PostCubit, PostState>(
                listener: (context, state) {
                  if (state is! PostInitial) {
                    Future.delayed(
                      Duration(seconds: 2),
                    );
                  }
                },
                builder: (context, state) {
                  final postCubit = BlocProvider.of<PostCubit>(context);
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = postCubit.postsCubit[index];
                        return CustomPostContainer(post: post);
                      },
                      childCount: postCubit.postsCubit.length,
                    ),
                  );
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
