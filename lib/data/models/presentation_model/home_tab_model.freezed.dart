// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeTabModel {
  IconData get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabModelCopyWith<HomeTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabModelCopyWith<$Res> {
  factory $HomeTabModelCopyWith(
          HomeTabModel value, $Res Function(HomeTabModel) then) =
      _$HomeTabModelCopyWithImpl<$Res, HomeTabModel>;
  @useResult
  $Res call({IconData icon});
}

/// @nodoc
class _$HomeTabModelCopyWithImpl<$Res, $Val extends HomeTabModel>
    implements $HomeTabModelCopyWith<$Res> {
  _$HomeTabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeTabModelCopyWith<$Res>
    implements $HomeTabModelCopyWith<$Res> {
  factory _$$_HomeTabModelCopyWith(
          _$_HomeTabModel value, $Res Function(_$_HomeTabModel) then) =
      __$$_HomeTabModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData icon});
}

/// @nodoc
class __$$_HomeTabModelCopyWithImpl<$Res>
    extends _$HomeTabModelCopyWithImpl<$Res, _$_HomeTabModel>
    implements _$$_HomeTabModelCopyWith<$Res> {
  __$$_HomeTabModelCopyWithImpl(
      _$_HomeTabModel _value, $Res Function(_$_HomeTabModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_$_HomeTabModel(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_HomeTabModel extends _HomeTabModel {
  const _$_HomeTabModel({required this.icon}) : super._();

  @override
  final IconData icon;

  @override
  String toString() {
    return 'HomeTabModel(icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeTabModel &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeTabModelCopyWith<_$_HomeTabModel> get copyWith =>
      __$$_HomeTabModelCopyWithImpl<_$_HomeTabModel>(this, _$identity);
}

abstract class _HomeTabModel extends HomeTabModel {
  const factory _HomeTabModel({required final IconData icon}) = _$_HomeTabModel;
  const _HomeTabModel._() : super._();

  @override
  IconData get icon;
  @override
  @JsonKey(ignore: true)
  _$$_HomeTabModelCopyWith<_$_HomeTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}
