import 'package:flutter/material.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';

class SubwayInfoWidget extends StatelessWidget {
  final SubwayInfoModel _subwayInfoModel;

  const SubwayInfoWidget({
    super.key,
    required SubwayInfoModel subwayInfoModel,
  }) : _subwayInfoModel = subwayInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('${_subwayInfoModel.station}역'),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('방향: '),
              Text(_subwayInfoModel.direction),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('타입: '),
              Text(_subwayInfoModel.trainType),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('종착역:'),
              Text('${_subwayInfoModel.finalDestination}역'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('알림:'),
              Text('${_subwayInfoModel.trainStatusMessage}'),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('${_subwayInfoModel.secondsUntilArrival} 초 후 도착'),
            ],
          ),
        ],
      ),
    );
  }
}
