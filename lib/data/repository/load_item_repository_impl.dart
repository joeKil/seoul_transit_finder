import 'package:seoul_transit_finder/data/data_source/lost_item_api.dart';
import 'package:seoul_transit_finder/data/model/lost_item_info.dart';
import 'package:seoul_transit_finder/data/repository/lost_item_repository.dart';

import '../../core/result.dart';

class LostItemRepositoryImpl implements LostItemRepository {
  final LostItemApi _lostItemApi;

  LostItemApi get lostItemApi => _lostItemApi;

  @override
  Future<Result<List<LostItemInfo>>> getLostItems(String query) async {
    try {
      final response = await _lostItemApi.getSubwayArrivalInfoList(
          query);
      final lostItemList =
      response.map((e) => LostItemInfo.fromJson(e)).toList();
      // response.map((e) => SubwayArrivalInfo.fromJson(e)).toList();
      return Result.success(lostItemList);
    } catch (e) {
      return const Result.success([]);
    }
  }
}