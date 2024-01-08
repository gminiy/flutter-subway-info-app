// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subway_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubwayInfoModelImpl _$$SubwayInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubwayInfoModelImpl(
      station: json['station'] as String,
      direction: json['direction'] as String,
      trainType: json['trainType'] as String,
      finalDestination: json['finalDestination'] as String,
      secondsUntilArrival: json['secondsUntilArrival'] as int,
      trainStatusMessage: json['trainStatusMessage'] as String,
    );

Map<String, dynamic> _$$SubwayInfoModelImplToJson(
        _$SubwayInfoModelImpl instance) =>
    <String, dynamic>{
      'station': instance.station,
      'direction': instance.direction,
      'trainType': instance.trainType,
      'finalDestination': instance.finalDestination,
      'secondsUntilArrival': instance.secondsUntilArrival,
      'trainStatusMessage': instance.trainStatusMessage,
    };
