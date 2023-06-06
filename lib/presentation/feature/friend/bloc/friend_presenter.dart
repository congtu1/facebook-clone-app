import 'package:flutter/material.dart';

import '../../../core/base_page/base_bloc/base_presenter.dart';
import './friend_state.dart';

class FriendPresenter extends BasePresenter<FriendState> {
  FriendPresenter(
      // TODO: (remove) create parameter here.
      {
    @visibleForTesting FriendState? state,
  }) : super(state ?? FriendState.initial());
}
