import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState() = _SplashState;

  const SplashState._(
      // {
      // required bool enableButton, //TODO: (remove) Example state
      // }
      );

  factory SplashState.initial() => SplashState(
      // enableButton: false, // TODO: (remove) init example state
      );
}
