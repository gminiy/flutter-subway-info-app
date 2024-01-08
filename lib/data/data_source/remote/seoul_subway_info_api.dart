import 'package:flutter_subway_info_app/data/data_source/remote/subway_info_api.dart';
import 'package:flutter_subway_info_app/data/dto/subway_info_query_response_dto.dart';
import 'package:dio/dio.dart';

class SeoulSubwayInfoApi implements SubwayInfoApi<SubwayInfoQueryResponseDto> {
  final Dio _dio;
  final String _baseUrl =
      'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5';

  SeoulSubwayInfoApi({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Response> querySubwayInfo(String station) async {
    return await _dio.get('$_baseUrl/$station');
  }
}
