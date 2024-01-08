// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostItemInfoImpl _$$LostItemInfoImplFromJson(Map<String, dynamic> json) =>
    _$LostItemInfoImpl(
      itemName: json['GET_NAME'] as String,
      registrationDate: json['REG_DATE'] as String,
      foundDate: json['GET_DATE'] as String,
      lostItemStatus: json['STATUS'] as String,
      lostItemType: json['CATE'] as String,
      storageLocation: json['TAKE_PLACE'] as String,
    );

Map<String, dynamic> _$$LostItemInfoImplToJson(_$LostItemInfoImpl instance) =>
    <String, dynamic>{
      'GET_NAME': instance.itemName,
      'REG_DATE': instance.registrationDate,
      'GET_DATE': instance.foundDate,
      'STATUS': instance.lostItemStatus,
      'CATE': instance.lostItemType,
      'TAKE_PLACE': instance.storageLocation,
    };
