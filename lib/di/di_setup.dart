import 'package:dio/dio.dart';
import 'package:flutter_subway_info_app/data/data_source/remote/seoul_subway_info_api.dart';
import 'package:flutter_subway_info_app/data/data_source/remote/subway_info_api.dart';
import 'package:flutter_subway_info_app/data/repository/subway_info_repository_impl.dart';
import 'package:flutter_subway_info_app/domain/repository/subway_info_repository.dart';
import 'package:flutter_subway_info_app/domain/use_case/query_subway_info_use_case.dart';
import 'package:flutter_subway_info_app/presentation/view_model/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<SubwayInfoApi>(SeoulSubwayInfoApi(dio: getIt<Dio>()));
  getIt.registerSingleton<SubwayInfoRepository>(
      SubwayInfoRepositoryImple(api: getIt()));
  getIt.registerSingleton<QuerySubwayInfoUseCase>(QuerySubwayInfoUseCase(
      subwayInfoRepository: getIt<SubwayInfoRepository>()));
  getIt.registerFactory<MainViewModel>(() =>
      MainViewModel(querySubwayInfoUseCase: getIt<QuerySubwayInfoUseCase>()));
}