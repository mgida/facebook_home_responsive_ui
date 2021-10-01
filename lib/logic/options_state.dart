part of 'options_cubit.dart';

@immutable
abstract class OptionsState {}
class OptionsInitial extends OptionsState {}

class OptionsLoading extends OptionsState {}

class OptionsFailure extends OptionsState {
  final errorMsg;

  OptionsFailure({required this.errorMsg});
}

class OptionsLoaded extends OptionsState {
  final List<List> options;

  OptionsLoaded({required this.options});
}
