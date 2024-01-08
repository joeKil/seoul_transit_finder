import 'package:seoul_transit_finder/data/data_source/lost_item_api.dart';
import 'package:seoul_transit_finder/data/model/lost_item_info.dart';
import 'package:seoul_transit_finder/data/repository/lost_item_repository.dart';

import '../../core/result.dart';

class LostItemRepositoryImpl implements LostItemRepository {
  late final LostItemApi _lostItemApi;

  LostItemApi get lostItemApi => _lostItemApi;

  LostItemRepositoryImpl(this._lostItemApi);

  @override
  Future<Result<List<LostItemInfo>>> getLostItems(String query) async {
    try {
      final response = await _lostItemApi.getLostItemInfoList();
      final lostItemList =
          response.map((e) => LostItemInfo.fromJson(e)).toList();
      return Result.success(lostItemList);
    } catch (e) {
      return const Result.success([]);
    }
  }
}
