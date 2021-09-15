import 'package:facebook_home_responsive_ui/utils/constants.dart';
import 'package:flutter/material.dart';

import 'models/post_model.dart';
import 'models/story_model.dart';
import 'models/user_model.dart';

final UserModel currentUser = UserModel(
  name: 'Marcus Ng',
  imageUrl:
      'https://cdn.pixabay.com/photo/2015/01/26/22/40/child-613199_960_720.jpg',
);

final List<UserModel> onlineUsers = [
  UserModel(
    name: 'Fabio Coentrao',
    imageUrl:
        'https://cdn.pixabay.com/photo/2013/03/03/14/58/fabio-coentrao-89568_960_720.jpg',
  ),
  UserModel(
    name: 'Neglo kante',
    imageUrl:
        'https://i.pinimg.com/564x/e6/7c/93/e67c9357e71ad0e355083518741cca65.jpg',
  ),
  UserModel(
      name: 'Mo Salah',
      imageUrl:
          'https://i.pinimg.com/564x/ba/55/9f/ba559f434adddfdcffd0c1157a8a48ef.jpg'),
  UserModel(
    name: 'Zalatan',
    imageUrl:
        'https://i.pinimg.com/564x/85/c6/55/85c6550efd410f9559950a084073f92a.jpg',
  ),
  UserModel(
    name: 'Marco Reus',
    imageUrl:
        'https://i.pinimg.com/564x/e8/7f/fb/e87ffb504672206ebc5d27ce9462542e.jpg',
  ),
  UserModel(
    name: 'Ronaldinho Barcelona',
    imageUrl:
        'https://i.pinimg.com/564x/1e/34/44/1e3444d47ea60da8155453a51548953d.jpg',
  ),
  UserModel(
    name: 'Psg Star',
    imageUrl:
        'https://i.pinimg.com/564x/61/0a/d5/610ad58d84fca3f0385efbb037cb94cc.jpg',
  ),
  UserModel(
      name: 'James Everton',
      imageUrl:
          'https://i.pinimg.com/564x/9e/af/cf/9eafcf6c01c53be1d970cb7c2d617c78.jpg'),
  UserModel(
    name: 'dele ali',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  UserModel(
    name: 'harry kane',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'paul pogba',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'shaw',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'greenwood',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  UserModel(
    name: 'Bruno',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  UserModel(
    name: 'mason mount',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  UserModel(
    name: 'lukaku',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'carrick',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  UserModel(
      name: 'gareth bale',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  UserModel(
    name: 'Karim Benzema',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  UserModel(
    name: 'patric Evra',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<StoryModel> stories = [
  StoryModel(
    user: onlineUsers[2],
    imageUrl:
        'https://i.pinimg.com/564x/4e/96/0b/4e960b168f7e266ca02a01657f2f2078.jpg',
  ),
  StoryModel(
    user: onlineUsers[6],
    imageUrl:
        'https://i.pinimg.com/236x/44/5e/f9/445ef92ef5afe64c4c8e1c859312b4c4.jpg',
    isViewed: true,
  ),
  StoryModel(
      user: onlineUsers[3],
      imageUrl:
          'https://i.pinimg.com/564x/8e/4a/af/8e4aaf8b8c6b92f6dc3d8ca8c25b7156.jpg'),
  StoryModel(
    user: onlineUsers[9],
    imageUrl:
        'https://i.pinimg.com/564x/6c/16/b0/6c16b033a50050bca84e469908c9ff69.jpg',
    isViewed: true,
  ),
  StoryModel(
      user: onlineUsers[7],
      imageUrl:
          'https://i.pinimg.com/564x/08/50/bc/0850bcfa0de19fd92cfbddf96faf6360.jpg'),
  StoryModel(
      user: onlineUsers[2],
      imageUrl:
          'https://i.pinimg.com/564x/7c/e3/a3/7ce3a3f563ee2f072ab3b94bbc2159e9.jpg'),
  StoryModel(
    user: onlineUsers[6],
    imageUrl:
        'https://i.pinimg.com/564x/7f/29/0c/7f290c728de3ed127df69085a16d5fdb.jpg',
    isViewed: true,
  ),
  StoryModel(
      user: onlineUsers[3],
      imageUrl:
          'https://i.pinimg.com/564x/ee/96/92/ee9692a026ebe4fd3beaf026b9f04f60.jpg'),
  StoryModel(
    user: onlineUsers[9],
    imageUrl:
        'https://i.pinimg.com/564x/4f/21/88/4f2188288d3aa6b49be23e7a713934c9.jpg',
    isViewed: true,
  ),
];

final List<PostModel> posts = [
  PostModel(
    user: currentUser,
    caption: 'Here the future of football',
    timeAgo: '58m',
    imageUrl:
        'https://i.pinimg.com/564x/69/e1/ba/69e1ba568df4d99e110d2a010b925d54.jpg',
    likes: 800,
    comments: 120,
    shares: 50,
  ),
  PostModel(
    user: onlineUsers[5],
    caption:
        'It took Cristiano Ronaldo less than 13 minutes to score on his second Champions League debut for Manchester United',
    timeAgo: '3hr',
    imageUrl: null,
    likes: 750,
    comments: 15,
    shares: 30,
  ),
  PostModel(
    user: onlineUsers[4],
    caption:
        'Marco Reus is a German professional footballer who plays as a forward for and captains Bundesliga club Borussia Dortmund ',
    timeAgo: '8hr',
    imageUrl:
        'https://i.pinimg.com/564x/14/bf/ae/14bfae36639a387f5d466ab6e31f53a1.jpg',
    likes: 900,
    comments: 500,
    shares: 150,
  ),
  PostModel(
    user: onlineUsers[3],
    caption: 'Zlatan Ibrahimovic',
    timeAgo: '15hr',
    imageUrl:
        'https://i.pinimg.com/564x/de/06/18/de061875e9cf73adf7b423d32caf9cd0.jpg',
    likes: 450,
    comments: 100,
    shares: 10,
  ),
  PostModel(
    user: onlineUsers[0],
    caption:
        'Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football normally means the form of football that is the most popular where the word is used',
    timeAgo: '1d',
    imageUrl: null,
    likes: 320,
    comments: 20,
    shares: 5,
  ),
  PostModel(
    user: onlineUsers[9],
    caption: 'a Magician',
    timeAgo: '1d',
    imageUrl:
        'https://i.pinimg.com/564x/79/12/e2/7912e2ce565c90797a7235161a3203a6.jpg',
    likes: 5000,
    shares: 700,
    comments: 500,
  )
];

final List<List> moreOptionsList = const [
  [Icons.group, Colors.cyan, 'Friends'],
  [Icons.group_work_outlined, Constants.facebookBlue, 'Groups'],
  [Icons.shop, Colors.orange, 'MarketPlace'],
  [Icons.live_tv_sharp, Constants.facebookBlue, 'Watch'],
  [Icons.memory_outlined, Constants.facebookBlue, 'Memories'],
  [Icons.save_outlined, Colors.blue, 'Saved'],
  [Icons.pages_outlined, Colors.red, 'Pages'],
];
