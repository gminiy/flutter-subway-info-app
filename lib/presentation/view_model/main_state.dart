import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default([]) List<SubwayInfoModel> subwayInfoModels,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}