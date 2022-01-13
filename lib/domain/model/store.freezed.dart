// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
class _$StoreTearOff {
  const _$StoreTearOff();

  _Store call(
      {required String addr,
      required String code,
      @JsonKey(name: 'created_at') required String? createdAt,
      required num lat,
      required num lng,
      required String name,
      @JsonKey(name: 'remain_stat') required String? remainStat,
      @JsonKey(name: 'stock_at') required String? stockAt,
      required String type}) {
    return _Store(
      addr: addr,
      code: code,
      createdAt: createdAt,
      lat: lat,
      lng: lng,
      name: name,
      remainStat: remainStat,
      stockAt: stockAt,
      type: type,
    );
  }

  Store fromJson(Map<String, Object?> json) {
    return Store.fromJson(json);
  }
}

/// @nodoc
const $Store = _$StoreTearOff();

/// @nodoc
mixin _$Store {
  String get addr => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  num get lat => throw _privateConstructorUsedError;
  num get lng => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'remain_stat')
  String? get remainStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_at')
  String? get stockAt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res>;
  $Res call(
      {String addr,
      String code,
      @JsonKey(name: 'created_at') String? createdAt,
      num lat,
      num lng,
      String name,
      @JsonKey(name: 'remain_stat') String? remainStat,
      @JsonKey(name: 'stock_at') String? stockAt,
      String type});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  final Store _value;
  // ignore: unused_field
  final $Res Function(Store) _then;

  @override
  $Res call({
    Object? addr = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? name = freezed,
    Object? remainStat = freezed,
    Object? stockAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remainStat: remainStat == freezed
          ? _value.remainStat
          : remainStat // ignore: cast_nullable_to_non_nullable
              as String?,
      stockAt: stockAt == freezed
          ? _value.stockAt
          : stockAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) then) =
      __$StoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String addr,
      String code,
      @JsonKey(name: 'created_at') String? createdAt,
      num lat,
      num lng,
      String name,
      @JsonKey(name: 'remain_stat') String? remainStat,
      @JsonKey(name: 'stock_at') String? stockAt,
      String type});
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(_Store _value, $Res Function(_Store) _then)
      : super(_value, (v) => _then(v as _Store));

  @override
  _Store get _value => super._value as _Store;

  @override
  $Res call({
    Object? addr = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? name = freezed,
    Object? remainStat = freezed,
    Object? stockAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_Store(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remainStat: remainStat == freezed
          ? _value.remainStat
          : remainStat // ignore: cast_nullable_to_non_nullable
              as String?,
      stockAt: stockAt == freezed
          ? _value.stockAt
          : stockAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store implements _Store {
  const _$_Store(
      {required this.addr,
      required this.code,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.lat,
      required this.lng,
      required this.name,
      @JsonKey(name: 'remain_stat') required this.remainStat,
      @JsonKey(name: 'stock_at') required this.stockAt,
      required this.type});

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final String addr;
  @override
  final String code;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final num lat;
  @override
  final num lng;
  @override
  final String name;
  @override
  @JsonKey(name: 'remain_stat')
  final String? remainStat;
  @override
  @JsonKey(name: 'stock_at')
  final String? stockAt;
  @override
  final String type;

  @override
  String toString() {
    return 'Store(addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            const DeepCollectionEquality().equals(other.addr, addr) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.remainStat, remainStat) &&
            const DeepCollectionEquality().equals(other.stockAt, stockAt) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addr),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(remainStat),
      const DeepCollectionEquality().hash(stockAt),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreToJson(this);
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {required String addr,
      required String code,
      @JsonKey(name: 'created_at') required String? createdAt,
      required num lat,
      required num lng,
      required String name,
      @JsonKey(name: 'remain_stat') required String? remainStat,
      @JsonKey(name: 'stock_at') required String? stockAt,
      required String type}) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  String get addr;
  @override
  String get code;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  num get lat;
  @override
  num get lng;
  @override
  String get name;
  @override
  @JsonKey(name: 'remain_stat')
  String? get remainStat;
  @override
  @JsonKey(name: 'stock_at')
  String? get stockAt;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$StoreCopyWith<_Store> get copyWith => throw _privateConstructorUsedError;
}
