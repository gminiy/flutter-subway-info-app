import 'package:flutter_subway_info_app/core/result.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';
import 'package:flutter_subway_info_app/domain/repository/subway_info_repository.dart';

class QuerySubwayInfoUseCase {
  final SubwayInfoRepository _subwayInfoRepository;

  const QuerySubwayInfoUseCase({
    required SubwayInfoRepository subwayInfoRepository,
  }) : _subwayInfoRepository = subwayInfoRepository;

  Future<Result<List<SubwayInfoModel>>> querySubwayInfo(String station) async {
    try {
      final List<SubwayInfoModel> subwayInfoList =
          await _subwayInfoRepository.querySubwayInfo(station);
      return Result.success(subwayInfoList);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
