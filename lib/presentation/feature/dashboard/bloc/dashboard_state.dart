import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    required int currentTab, //TODO: (remove) Example state
  }) = _DashboardState;

  factory DashboardState.initial() => DashboardState(
        // enableButton: false, // TODO: (remove) init example state
        currentTab: 0,
      );
}
