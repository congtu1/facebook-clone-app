import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_state.freezed.dart';

@freezed
class FriendState with _$FriendState {
  factory FriendState({
    required List<String> friendRequests,
  }) = _FriendState;

  factory FriendState.initial() => FriendState(
        friendRequests: [],
      );
}
