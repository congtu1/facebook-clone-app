import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState() = _HomeState;

  const HomeState._(
      // {
      // required bool enableButton, //TODO: (remove) Example state
      // }
      );

  factory HomeState.initial() => HomeState(
      // enableButton: false, // TODO: (remove) init example state
      );
}
