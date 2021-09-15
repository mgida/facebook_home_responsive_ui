
import 'user_model.dart';

class StoryModel {
  final UserModel user;
  final String imageUrl;
  final bool isViewed;

  StoryModel({
    required this.user,
    required this.imageUrl,
    this.isViewed = false,
  });
}
