import 'package:flutter/material.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import './dashboard_state.dart';

class DashboardPresenter extends BasePresenter<DashboardState> {
  DashboardPresenter(
      // TODO: (remove) create parameter here.
      {
    @visibleForTesting DashboardState? state,
  }) : super(state ?? DashboardState.initial());

  void tabChange(int tab) {
    emit(state.copyWith(currentTab: tab,));
  }
}
