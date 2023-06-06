// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendState {
  List<String> get friendRequests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendStateCopyWith<FriendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendStateCopyWith<$Res> {
  factory $FriendStateCopyWith(
          FriendState value, $Res Function(FriendState) then) =
      _$FriendStateCopyWithImpl<$Res, FriendState>;
  @useResult
  $Res call({List<String> friendRequests});
}

/// @nodoc
class _$FriendStateCopyWithImpl<$Res, $Val extends FriendState>
    implements $FriendStateCopyWith<$Res> {
  _$FriendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendRequests = null,
  }) {
    return _then(_value.copyWith(
      friendRequests: null == friendRequests
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendStateCopyWith<$Res>
    implements $FriendStateCopyWith<$Res> {
  factory _$$_FriendStateCopyWith(
          _$_FriendState value, $Res Function(_$_FriendState) then) =
      __$$_FriendStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> friendRequests});
}

/// @nodoc
class __$$_FriendStateCopyWithImpl<$Res>
    extends _$FriendStateCopyWithImpl<$Res, _$_FriendState>
    implements _$$_FriendStateCopyWith<$Res> {
  __$$_FriendStateCopyWithImpl(
      _$_FriendState _value, $Res Function(_$_FriendState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendRequests = null,
  }) {
    return _then(_$_FriendState(
      friendRequests: null == friendRequests
          ? _value._friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FriendState implements _FriendState {
  _$_FriendState({required final List<String> friendRequests})
      : _friendRequests = friendRequests;

  final List<String> _friendRequests;
  @override
  List<String> get friendRequests {
    if (_friendRequests is EqualUnmodifiableListView) return _friendRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendRequests);
  }

  @override
  String toString() {
    return 'FriendState(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendState &&
            const DeepCollectionEquality()
                .equals(other._friendRequests, _friendRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_friendRequests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendStateCopyWith<_$_FriendState> get copyWith =>
      __$$_FriendStateCopyWithImpl<_$_FriendState>(this, _$identity);
}

abstract class _FriendState implements FriendState {
  factory _FriendState({required final List<String> friendRequests}) =
      _$_FriendState;

  @override
  List<String> get friendRequests;
  @override
  @JsonKey(ignore: true)
  _$$_FriendStateCopyWith<_$_FriendState> get copyWith =>
      throw _privateConstructorUsedError;
}
