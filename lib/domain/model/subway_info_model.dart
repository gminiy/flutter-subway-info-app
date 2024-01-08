import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subway_info_model.freezed.dart';

part 'subway_info_model.g.dart';

@freezed
class SubwayInfoModel with _$SubwayInfoModel {
  const factory SubwayInfoModel({
    required String station,
    required String direction,
    required String trainType,
    required String finalDestination,
    required int secondsUntilArrival,
    required String trainStatusMessage,
  }) = _SubwayInfoModel;

  factory SubwayInfoModel.fromJson(Map<String, Object?> json) =>
      _$SubwayInfoModelFromJson(json);
}
