import 'package:bloc/bloc.dart';
import 'package:facebook_home_responsive_ui/data/models/post_model.dart';
import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:meta/meta.dart';
part 'post_state.dart';

class PostCubit extends Cubit<PostState> {

  PostCubit() : super(PostInitial());

  List<PostModel> get postsCubit => posts;
}
