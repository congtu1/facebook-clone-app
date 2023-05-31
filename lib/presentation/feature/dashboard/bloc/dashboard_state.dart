import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/presentation_model/home_tab_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState(
      {required int currentTab,
      required List<HomeTabModel> homeTabs //TODO: (remove) Example state
      }) = _DashboardState;

  factory DashboardState.initial() => DashboardState(
          // enableButton: false, // TODO: (remove) init example state
          currentTab: 0,
          homeTabs: [
            HomeTabModel(
              icon: Icons.home_outlined,
              color: Colors.grey,
            ),
            HomeTabModel(
              icon: Icons.people_outline,
              color: Colors.grey,
            ),
            HomeTabModel(
              icon: Icons.tv,
              color: Colors.grey,
            ),
            HomeTabModel(
              icon: Icons.favorite_outline,
              color: Colors.grey,
            ),
            HomeTabModel(
              icon: Icons.notifications_on_outlined,
              color: Colors.grey,
            ),
            HomeTabModel(
              icon: Icons.notifications_on_outlined,
              color: Colors.grey,
            ),
          ]);
}
