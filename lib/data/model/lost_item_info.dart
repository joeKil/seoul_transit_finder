import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'lost_item_info.freezed.dart';
part 'lost_item_info.g.dart';

@freezed
class LostItemInfo with _$LostItemInfo {
  const factory LostItemInfo({
    @JsonKey(name: 'GET_NAME') required String itemName,
    @JsonKey(name: 'REG_DATE') required String registrationDate,
    @JsonKey(name: 'GET_DATE') required String foundDate,
    @JsonKey(name: 'STATUS') required String lostItemStatus,
    @JsonKey(name: 'CATE') required String lostItemType,
    @JsonKey(name: 'TAKE_PLACE') required String storageLocation,
  }) = _LostItemInfo;

  factory LostItemInfo.fromJson(Map<String, Object?> json) =>
      _$LostItemInfoFromJson(json); // 여기도 수정했어.
}
