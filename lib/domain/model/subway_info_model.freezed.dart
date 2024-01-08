// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subway_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubwayInfoModel _$SubwayInfoModelFromJson(Map<String, dynamic> json) {
  return _SubwayInfoModel.fromJson(json);
}

/// @nodoc
mixin _$SubwayInfoModel {
  String get station => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  String get trainType => throw _privateConstructorUsedError;
  String get finalDestination => throw _privateConstructorUsedError;
  int get secondsUntilArrival => throw _privateConstructorUsedError;
  String get trainStatusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubwayInfoModelCopyWith<SubwayInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubwayInfoModelCopyWith<$Res> {
  factory $SubwayInfoModelCopyWith(
          SubwayInfoModel value, $Res Function(SubwayInfoModel) then) =
      _$SubwayInfoModelCopyWithImpl<$Res, SubwayInfoModel>;
  @useResult
  $Res call(
      {String station,
      String direction,
      String trainType,
      String finalDestination,
      int secondsUntilArrival,
      String trainStatusMessage});
}

/// @nodoc
class _$SubwayInfoModelCopyWithImpl<$Res, $Val extends SubwayInfoModel>
    implements $SubwayInfoModelCopyWith<$Res> {
  _$SubwayInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? direction = null,
    Object? trainType = null,
    Object? finalDestination = null,
    Object? secondsUntilArrival = null,
    Object? trainStatusMessage = null,
  }) {
    return _then(_value.copyWith(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      trainType: null == trainType
          ? _value.trainType
          : trainType // ignore: cast_nullable_to_non_nullable
              as String,
      finalDestination: null == finalDestination
          ? _value.finalDestination
          : finalDestination // ignore: cast_nullable_to_non_nullable
              as String,
      secondsUntilArrival: null == secondsUntilArrival
          ? _value.secondsUntilArrival
          : secondsUntilArrival // ignore: cast_nullable_to_non_nullable
              as int,
      trainStatusMessage: null == trainStatusMessage
          ? _value.trainStatusMessage
          : trainStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubwayInfoModelImplCopyWith<$Res>
    implements $SubwayInfoModelCopyWith<$Res> {
  factory _$$SubwayInfoModelImplCopyWith(_$SubwayInfoModelImpl value,
          $Res Function(_$SubwayInfoModelImpl) then) =
      __$$SubwayInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String station,
      String direction,
      String trainType,
      String finalDestination,
      int secondsUntilArrival,
      String trainStatusMessage});
}

/// @nodoc
class __$$SubwayInfoModelImplCopyWithImpl<$Res>
    extends _$SubwayInfoModelCopyWithImpl<$Res, _$SubwayInfoModelImpl>
    implements _$$SubwayInfoModelImplCopyWith<$Res> {
  __$$SubwayInfoModelImplCopyWithImpl(
      _$SubwayInfoModelImpl _value, $Res Function(_$SubwayInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? direction = null,
    Object? trainType = null,
    Object? finalDestination = null,
    Object? secondsUntilArrival = null,
    Object? trainStatusMessage = null,
  }) {
    return _then(_$SubwayInfoModelImpl(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      trainType: null == trainType
          ? _value.trainType
          : trainType // ignore: cast_nullable_to_non_nullable
              as String,
      finalDestination: null == finalDestination
          ? _value.finalDestination
          : finalDestination // ignore: cast_nullable_to_non_nullable
              as String,
      secondsUntilArrival: null == secondsUntilArrival
          ? _value.secondsUntilArrival
          : secondsUntilArrival // ignore: cast_nullable_to_non_nullable
              as int,
      trainStatusMessage: null == trainStatusMessage
          ? _value.trainStatusMessage
          : trainStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubwayInfoModelImpl
    with DiagnosticableTreeMixin
    implements _SubwayInfoModel {
  const _$SubwayInfoModelImpl(
      {required this.station,
      required this.direction,
      required this.trainType,
      required this.finalDestination,
      required this.secondsUntilArrival,
      required this.trainStatusMessage});

  factory _$SubwayInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubwayInfoModelImplFromJson(json);

  @override
  final String station;
  @override
  final String direction;
  @override
  final String trainType;
  @override
  final String finalDestination;
  @override
  final int secondsUntilArrival;
  @override
  final String trainStatusMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubwayInfoModel(station: $station, direction: $direction, trainType: $trainType, finalDestination: $finalDestination, secondsUntilArrival: $secondsUntilArrival, trainStatusMessage: $trainStatusMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubwayInfoModel'))
      ..add(DiagnosticsProperty('station', station))
      ..add(DiagnosticsProperty('direction', direction))
      ..add(DiagnosticsProperty('trainType', trainType))
      ..add(DiagnosticsProperty('finalDestination', finalDestination))
      ..add(DiagnosticsProperty('secondsUntilArrival', secondsUntilArrival))
      ..add(DiagnosticsProperty('trainStatusMessage', trainStatusMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubwayInfoModelImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.trainType, trainType) ||
                other.trainType == trainType) &&
            (identical(other.finalDestination, finalDestination) ||
                other.finalDestination == finalDestination) &&
            (identical(other.secondsUntilArrival, secondsUntilArrival) ||
                other.secondsUntilArrival == secondsUntilArrival) &&
            (identical(other.trainStatusMessage, trainStatusMessage) ||
                other.trainStatusMessage == trainStatusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, station, direction, trainType,
      finalDestination, secondsUntilArrival, trainStatusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubwayInfoModelImplCopyWith<_$SubwayInfoModelImpl> get copyWith =>
      __$$SubwayInfoModelImplCopyWithImpl<_$SubwayInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubwayInfoModelImplToJson(
      this,
    );
  }
}

abstract class _SubwayInfoModel implements SubwayInfoModel {
  const factory _SubwayInfoModel(
      {required final String station,
      required final String direction,
      required final String trainType,
      required final String finalDestination,
      required final int secondsUntilArrival,
      required final String trainStatusMessage}) = _$SubwayInfoModelImpl;

  factory _SubwayInfoModel.fromJson(Map<String, dynamic> json) =
      _$SubwayInfoModelImpl.fromJson;

  @override
  String get station;
  @override
  String get direction;
  @override
  String get trainType;
  @override
  String get finalDestination;
  @override
  int get secondsUntilArrival;
  @override
  String get trainStatusMessage;
  @override
  @JsonKey(ignore: true)
  _$$SubwayInfoModelImplCopyWith<_$SubwayInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
