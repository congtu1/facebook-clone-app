import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_tab_model.freezed.dart';

@freezed
class HomeTabModel with _$HomeTabModel {
  const factory HomeTabModel({
    required IconData icon,
    required Color color,
  }) = _HomeTabModel;

  const HomeTabModel._();
}
