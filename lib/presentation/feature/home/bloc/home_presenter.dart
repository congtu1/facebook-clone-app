import 'package:flutter/material.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import './home_state.dart';
  
class HomePresenter extends BasePresenter<HomeState> {
  HomePresenter(
      // TODO: (remove) create parameter here.
      {
    @visibleForTesting HomeState? state,
  }) : super(state ?? HomeState.initial());
}  
