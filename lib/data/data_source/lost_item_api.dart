import 'package:dio/dio.dart';

class LostItemApi {
  final String _baseUrl = 'http://openapi.seoul.go.kr:8088';

  final Dio _dio;

  const LostItemApi({
    required Dio dio,
  }) : _dio = dio;

  Future<List<dynamic>> getLostItemInfoList(String lostItemName) async {
    final response = await _dio.get(
      '$_baseUrl/764973644a74686633374b67634777/json/lostArticleInfo/1/100/$lostItemName',
    );
    print('Response: ${response.data}');
    final data = response.data as Map<String, dynamic>;
    final lostArticleInfo = data['lostArticleInfo'] as List<dynamic>;
    return lostArticleInfo;
  }
}
