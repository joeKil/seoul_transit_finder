import 'package:dio/dio.dart';

class LostItemApi {
  final String _baseUrl = 'http://openapi.seoul.go.kr:8088/764973644a74686633374b67634777/json/lostArticleInfo/1/5/';

  final Dio _dio;

  const LostItemApi({
    required Dio dio,
  }) : _dio = dio;

  Future<List<dynamic>> getSubwayArrivalInfoList(
      String stationName) async {
    final response = await _dio.get(
      '$_baseUrl/sample/json/realtimeStationArrival/0/5/$stationName',
    );
    final data = response.data as Map<String, dynamic>;
    final realtimeArrivalList =
    data['realtimeArrivalList'] as List<dynamic>;
    return realtimeArrivalList;
  }
}