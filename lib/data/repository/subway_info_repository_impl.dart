import 'package:flutter_subway_info_app/data/data_source/remote/subway_info_api.dart';
import 'package:flutter_subway_info_app/data/dto/subway_info_query_response_dto.dart';
import 'package:flutter_subway_info_app/data/mapper/realtime_arrival_to_subway_info_mapper.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';
import 'package:flutter_subway_info_app/domain/repository/subway_info_repository.dart';

class SubwayInfoRepositoryImple implements SubwayInfoRepository {
  final SubwayInfoApi _api;

  const SubwayInfoRepositoryImple({
    required SubwayInfoApi api,
  }) : _api = api;

  @override
  Future<List<SubwayInfoModel>> querySubwayInfo(String station) async {
    final response = await _api.querySubwayInfo(station);
    final SubwayInfoQueryResponseDto subwayInfoQueryResponseDto =
        SubwayInfoQueryResponseDto.fromJson(response.data);

    if (subwayInfoQueryResponseDto.realtimeArrivalList == null) {
      return [];
    }

    return subwayInfoQueryResponseDto.realtimeArrivalList!
        .map((realtimeArrival) => realtimeArrival.toSubwayInfo())
        .toList();
  }
}
