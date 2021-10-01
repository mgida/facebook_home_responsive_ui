part of 'room_cubit.dart';

@immutable
abstract class RoomState {}
class RoomInitial extends RoomState {}

class RoomLoading extends RoomState {}

class RoomFailure extends RoomState {
  final errorMsg;

  RoomFailure({required this.errorMsg});
}

class RoomLoaded extends RoomState {
  final List<UserModel> rooms;

  RoomLoaded({required this.rooms});
}
