part of 'post_cubit.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostFailure extends PostState {
  final errorMsg;

  PostFailure({required this.errorMsg});
}

class PostLoaded extends PostState {
  final List<PostModel> posts;

  PostLoaded({required this.posts});
}
