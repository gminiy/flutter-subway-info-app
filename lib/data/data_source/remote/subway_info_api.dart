import 'package:dio/dio.dart';

abstract interface class SubwayInfoApi<E> {
  Future<Response> querySubwayInfo(String station);
}
