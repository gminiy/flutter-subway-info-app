// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      subwayInfoModels: (json['subwayInfoModels'] as List<dynamic>?)
              ?.map((e) => SubwayInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'subwayInfoModels': instance.subwayInfoModels,
    };
