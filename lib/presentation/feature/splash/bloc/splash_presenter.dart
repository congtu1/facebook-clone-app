import 'package:flutter/material.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import './splash_state.dart';

class SplashPresenter extends BasePresenter<SplashState> {
  SplashPresenter(
      // TODO: (remove) create parameter here.
      {
    @visibleForTesting SplashState? state,
  }) : super(state ?? SplashState.initial());
}
