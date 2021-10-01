part of 'story_cubit.dart';

@immutable
abstract class StoryState {}
class StoryInitial extends StoryState {}

class StoryLoading extends StoryState {}

class StoryFailure extends StoryState {
  final errorMsg;

  StoryFailure({required this.errorMsg});
}

class StoryLoaded extends StoryState {
  final List<StoryModel> stories;

  StoryLoaded({required this.stories});
}
