import '../../core/result.dart';
import '../model/lost_item_info.dart';

abstract interface class LostItemRepository {
  Future<Result<List<LostItemInfo>>> getLostItems(String query);
}