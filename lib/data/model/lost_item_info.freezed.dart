// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lost_item_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LostItemInfo _$LostItemInfoFromJson(Map<String, dynamic> json) {
  return _LostItemInfo.fromJson(json);
}

/// @nodoc
mixin _$LostItemInfo {
  @JsonKey(name: 'GET_NAME')
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'REG_DATE')
  String get registrationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'GET_DATE')
  String get foundDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get lostItemStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'CATE')
  String get lostItemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'TAKE_PLACE')
  String get storageLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LostItemInfoCopyWith<LostItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostItemInfoCopyWith<$Res> {
  factory $LostItemInfoCopyWith(
          LostItemInfo value, $Res Function(LostItemInfo) then) =
      _$LostItemInfoCopyWithImpl<$Res, LostItemInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GET_NAME') String itemName,
      @JsonKey(name: 'REG_DATE') String registrationDate,
      @JsonKey(name: 'GET_DATE') String foundDate,
      @JsonKey(name: 'STATUS') String lostItemStatus,
      @JsonKey(name: 'CATE') String lostItemType,
      @JsonKey(name: 'TAKE_PLACE') String storageLocation});
}

/// @nodoc
class _$LostItemInfoCopyWithImpl<$Res, $Val extends LostItemInfo>
    implements $LostItemInfoCopyWith<$Res> {
  _$LostItemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? registrationDate = null,
    Object? foundDate = null,
    Object? lostItemStatus = null,
    Object? lostItemType = null,
    Object? storageLocation = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      foundDate: null == foundDate
          ? _value.foundDate
          : foundDate // ignore: cast_nullable_to_non_nullable
              as String,
      lostItemStatus: null == lostItemStatus
          ? _value.lostItemStatus
          : lostItemStatus // ignore: cast_nullable_to_non_nullable
              as String,
      lostItemType: null == lostItemType
          ? _value.lostItemType
          : lostItemType // ignore: cast_nullable_to_non_nullable
              as String,
      storageLocation: null == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LostItemInfoImplCopyWith<$Res>
    implements $LostItemInfoCopyWith<$Res> {
  factory _$$LostItemInfoImplCopyWith(
          _$LostItemInfoImpl value, $Res Function(_$LostItemInfoImpl) then) =
      __$$LostItemInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GET_NAME') String itemName,
      @JsonKey(name: 'REG_DATE') String registrationDate,
      @JsonKey(name: 'GET_DATE') String foundDate,
      @JsonKey(name: 'STATUS') String lostItemStatus,
      @JsonKey(name: 'CATE') String lostItemType,
      @JsonKey(name: 'TAKE_PLACE') String storageLocation});
}

/// @nodoc
class __$$LostItemInfoImplCopyWithImpl<$Res>
    extends _$LostItemInfoCopyWithImpl<$Res, _$LostItemInfoImpl>
    implements _$$LostItemInfoImplCopyWith<$Res> {
  __$$LostItemInfoImplCopyWithImpl(
      _$LostItemInfoImpl _value, $Res Function(_$LostItemInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? registrationDate = null,
    Object? foundDate = null,
    Object? lostItemStatus = null,
    Object? lostItemType = null,
    Object? storageLocation = null,
  }) {
    return _then(_$LostItemInfoImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      foundDate: null == foundDate
          ? _value.foundDate
          : foundDate // ignore: cast_nullable_to_non_nullable
              as String,
      lostItemStatus: null == lostItemStatus
          ? _value.lostItemStatus
          : lostItemStatus // ignore: cast_nullable_to_non_nullable
              as String,
      lostItemType: null == lostItemType
          ? _value.lostItemType
          : lostItemType // ignore: cast_nullable_to_non_nullable
              as String,
      storageLocation: null == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LostItemInfoImpl with DiagnosticableTreeMixin implements _LostItemInfo {
  const _$LostItemInfoImpl(
      {@JsonKey(name: 'GET_NAME') required this.itemName,
      @JsonKey(name: 'REG_DATE') required this.registrationDate,
      @JsonKey(name: 'GET_DATE') required this.foundDate,
      @JsonKey(name: 'STATUS') required this.lostItemStatus,
      @JsonKey(name: 'CATE') required this.lostItemType,
      @JsonKey(name: 'TAKE_PLACE') required this.storageLocation});

  factory _$LostItemInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LostItemInfoImplFromJson(json);

  @override
  @JsonKey(name: 'GET_NAME')
  final String itemName;
  @override
  @JsonKey(name: 'REG_DATE')
  final String registrationDate;
  @override
  @JsonKey(name: 'GET_DATE')
  final String foundDate;
  @override
  @JsonKey(name: 'STATUS')
  final String lostItemStatus;
  @override
  @JsonKey(name: 'CATE')
  final String lostItemType;
  @override
  @JsonKey(name: 'TAKE_PLACE')
  final String storageLocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LostItemInfo(itemName: $itemName, registrationDate: $registrationDate, foundDate: $foundDate, lostItemStatus: $lostItemStatus, lostItemType: $lostItemType, storageLocation: $storageLocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LostItemInfo'))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('registrationDate', registrationDate))
      ..add(DiagnosticsProperty('foundDate', foundDate))
      ..add(DiagnosticsProperty('lostItemStatus', lostItemStatus))
      ..add(DiagnosticsProperty('lostItemType', lostItemType))
      ..add(DiagnosticsProperty('storageLocation', storageLocation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostItemInfoImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.foundDate, foundDate) ||
                other.foundDate == foundDate) &&
            (identical(other.lostItemStatus, lostItemStatus) ||
                other.lostItemStatus == lostItemStatus) &&
            (identical(other.lostItemType, lostItemType) ||
                other.lostItemType == lostItemType) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, registrationDate,
      foundDate, lostItemStatus, lostItemType, storageLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LostItemInfoImplCopyWith<_$LostItemInfoImpl> get copyWith =>
      __$$LostItemInfoImplCopyWithImpl<_$LostItemInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LostItemInfoImplToJson(
      this,
    );
  }
}

abstract class _LostItemInfo implements LostItemInfo {
  const factory _LostItemInfo(
          {@JsonKey(name: 'GET_NAME') required final String itemName,
          @JsonKey(name: 'REG_DATE') required final String registrationDate,
          @JsonKey(name: 'GET_DATE') required final String foundDate,
          @JsonKey(name: 'STATUS') required final String lostItemStatus,
          @JsonKey(name: 'CATE') required final String lostItemType,
          @JsonKey(name: 'TAKE_PLACE') required final String storageLocation}) =
      _$LostItemInfoImpl;

  factory _LostItemInfo.fromJson(Map<String, dynamic> json) =
      _$LostItemInfoImpl.fromJson;

  @override
  @JsonKey(name: 'GET_NAME')
  String get itemName;
  @override
  @JsonKey(name: 'REG_DATE')
  String get registrationDate;
  @override
  @JsonKey(name: 'GET_DATE')
  String get foundDate;
  @override
  @JsonKey(name: 'STATUS')
  String get lostItemStatus;
  @override
  @JsonKey(name: 'CATE')
  String get lostItemType;
  @override
  @JsonKey(name: 'TAKE_PLACE')
  String get storageLocation;
  @override
  @JsonKey(ignore: true)
  _$$LostItemInfoImplCopyWith<_$LostItemInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
