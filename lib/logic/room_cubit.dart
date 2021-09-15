import 'package:bloc/bloc.dart';
import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/data/models/user_model.dart';
import 'package:meta/meta.dart';
part 'room_state.dart';

class RoomCubit extends Cubit<RoomState> {
  RoomCubit() : super(RoomInitial());

  List<UserModel> get onlineUsersCubit => onlineUsers;
}
