import 'package:flutter_subway_info_app/data/dto/subway_info_query_response_dto.dart';
import 'package:flutter_subway_info_app/domain/model/subway_info_model.dart';

extension RealtimeArrivalToSubwayInfo on RealtimeArrival {
  SubwayInfoModel toSubwayInfo() {
    return SubwayInfoModel(
      station: statnNm ?? '',
      direction: updnLine ?? '',
      trainType: btrainSttus ?? '',
      finalDestination: bstatnNm == null ? '' : bstatnNm!.split(' ')[0],
      secondsUntilArrival: barvlDt == null ? 0 : int.parse(barvlDt!),
      trainStatusMessage: arvlMsg2 ?? '',
    );
  }
}
