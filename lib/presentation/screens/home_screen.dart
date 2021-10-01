import 'package:facebook_home_responsive_ui/logic/options_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/post_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/room_cubit.dart';
import 'package:facebook_home_responsive_ui/logic/story_cubit.dart';
import 'package:facebook_home_responsive_ui/presentation/components/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_screen_mobile.dart';
import 'home_screen_web.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RoomCubit()..loadRooms(),
          ),
          BlocProvider(
            create: (context) => StoryCubit()..loadStories(),
          ),
          BlocProvider(
            create: (context) => PostCubit()..loadPosts(),
          ),
          BlocProvider(
            create: (context) => OptionsCubit()..displayOptions(),
          ),
        ],
        child: Scaffold(
          body: Responsive(
            mobile: HomeScreenMobile(
              trackingScrollController: _trackingScrollController,
            ),
            desktop: HomeScreenWeb(
              trackingScrollController: _trackingScrollController,
            ),
          ),
        ),
      ),
    );
  }
}
