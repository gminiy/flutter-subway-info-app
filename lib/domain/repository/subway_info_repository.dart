import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';

abstract interface class SubwayInfoRepository {
  Future<List<SubwayInfoModel>> querySubwayInfo(String station);
}