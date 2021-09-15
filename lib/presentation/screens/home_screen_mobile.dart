import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/logic/post_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/room_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/story_cubit.dart';
import 'package:facebook_home_responsive_ui/presentation/components/create_post_container.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_circle_button.dart';
import 'package:facebook_home_responsive_ui/presentation/components/custom_post_container.dart';
import 'package:facebook_home_responsive_ui/presentation/components/rooms.dart';
import 'package:facebook_home_responsive_ui/presentation/components/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController trackingScrollController;

  HomeScreenMobile({required this.trackingScrollController});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: trackingScrollController,
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: const TextStyle(
              color: Constants.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CustomCircleButton(
              icon: Icons.search,
              iconSize: 25.0,
              onPressed: () {},
            ),
            CustomCircleButton(
              //  icon: MdiIcons.facebookMessenger,
              icon: Icons.message,
              iconSize: 25.0,
              onPressed: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        SliverToBoxAdapter(
          child: const Divider(height: 15.0, thickness: 10),
        ),
        SliverToBoxAdapter(
          child: BlocConsumer<RoomCubit, RoomState>(
            listener: (context, state) {
              if (state is! RoomInitial) {
                Future.delayed(
                  Duration(seconds: 2),
                );
              }
            },
            builder: (context, state) {
              final roomCubit = BlocProvider.of<RoomCubit>(context);
              return Rooms(onlineUsers: roomCubit.onlineUsersCubit);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: const Divider(height: 15.0, thickness: 10),
        ),
        SliverToBoxAdapter(
          child: BlocConsumer<StoryCubit, StoryState>(
            listener: (context, state) {
              if (state is! StoryInitial) {
                Future.delayed(
                  Duration(seconds: 2),
                );
              }
            },
            builder: (context, state) {
              final storyCubit = BlocProvider.of<StoryCubit>(context);
              return Stories(
                currentUser: currentUser,
                stories: storyCubit.storiesCubit,
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: const Divider(height: 15.0, thickness: 10),
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
    );
  }
}
