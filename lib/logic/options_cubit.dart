import 'package:bloc/bloc.dart';
import 'package:facebook_home_responsive_ui/data/data.dart';
import 'package:meta/meta.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial());

  // List<List> get moreOptions => moreOptionsList;

  List<List> options = [];

  void displayOptions() {
    emit(OptionsLoading());
    try {
      options = moreOptionsList;
      emit(OptionsLoaded(options: options));
    } catch (e) {
      emit(OptionsFailure(errorMsg: e));
    }
  }
}
