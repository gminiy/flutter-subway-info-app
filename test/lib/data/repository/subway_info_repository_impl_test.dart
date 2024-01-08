import 'package:dio/dio.dart';
import 'package:flutter_subway_info_app/data/data_source/remote/seoul_subway_info_api.dart';
import 'package:flutter_subway_info_app/data/repository/subway_info_repository_impl.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Dio dio = Dio();
  final SeoulSubwayInfoApi api = SeoulSubwayInfoApi(dio: dio);
  final SubwayInfoRepositoryImple repository =
      SubwayInfoRepositoryImple(api: api);

  test('should return SubwayInfoModel', () async {
    final subwayInfoModels = await repository.querySubwayInfo('서울');
    subwayInfoModels.map((subwayInfoModel) =>
        expect(subwayInfoModel.runtimeType, SubwayInfoModel));
  });
}
