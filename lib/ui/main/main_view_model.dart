import 'package:flutter/foundation.dart';
import 'package:seoul_transit_finder/data/data_source/lost_item_api.dart';
import 'package:seoul_transit_finder/data/model/lost_item_info.dart';

class MainViewModel extends ChangeNotifier {
  late final LostItemApi _api;

  List<LostItemInfo> _lostItems = [];

  List<LostItemInfo> get lostItems => _lostItems;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  MainViewModel(this._api);

  Future<void> fetchLostItems() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await _api.getLostItemInfoList();
      _lostItems = response.map((item) {
        final lostItem = LostItemInfo.fromJson(item as Map<String, dynamic>);
        print('분실물 데이터: $lostItem');
        return lostItem;
      }).toList();
    } catch (e) {
      print('Error fetching lost items: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
