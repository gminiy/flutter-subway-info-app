import 'package:dio/dio.dart';

abstract interface class SubwayInfoApi {
  Future<Response> querySubwayInfo(String station);
}
