import 'package:bloc/bloc.dart';
import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:facebook_home_responsive_ui/data/models/story_model.dart';
import 'package:meta/meta.dart';
part 'story_state.dart';

class StoryCubit extends Cubit<StoryState> {
  StoryCubit() : super(StoryInitial());

  List<StoryModel> get storiesCubit => stories;
}
