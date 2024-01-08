import 'package:flutter/material.dart';
import 'package:flutter_subway_info_app/core/result.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';
import 'package:flutter_subway_info_app/domain/use_case/query_subway_info_use_case.dart';
import 'package:flutter_subway_info_app/presentation/view_model/main_state.dart';
import 'package:flutter_subway_info_app/util/debounce.dart';

class MainViewModel extends ChangeNotifier {
  MainState _state = const MainState();
  final QuerySubwayInfoUseCase _querySubwayInfoUseCase;
  final _debounce = Debounce(const Duration(milliseconds: 500));

  MainState get state => _state;

  MainViewModel({
    required QuerySubwayInfoUseCase querySubwayInfoUseCase,
  }) : _querySubwayInfoUseCase = querySubwayInfoUseCase;

  Future querySubwayInfo(String station) async {
    _debounce.onEvent(() async {
      if (station == '') {
        _state = state.copyWith(
          isLoading: false,
          subwayInfoModels: [],
        );
        notifyListeners();

        return;
      }
      _state = state.copyWith(
        isLoading: true,
      );
      notifyListeners();
      final Result<List<SubwayInfoModel>> result =
          await _querySubwayInfoUseCase.excute(station);
      switch (result) {
        case Success<List<SubwayInfoModel>>():
          _state = state.copyWith(
            isLoading: false,
            subwayInfoModels: result.data,
          );
          notifyListeners();
        case Error<List<SubwayInfoModel>>():
          _state = state.copyWith(
            isLoading: false,
            subwayInfoModels: [],
          );
          notifyListeners();
      }
    });
  }
}
