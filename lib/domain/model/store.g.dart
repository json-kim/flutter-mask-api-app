// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      addr: json['addr'] as String,
      code: json['code'] as String,
      createdAt: json['created_at'] as String?,
      lat: json['lat'] as num,
      lng: json['lng'] as num,
      name: json['name'] as String,
      remainStat: json['remain_stat'] as String?,
      stockAt: json['stock_at'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'addr': instance.addr,
      'code': instance.code,
      'created_at': instance.createdAt,
      'lat': instance.lat,
      'lng': instance.lng,
      'name': instance.name,
      'remain_stat': instance.remainStat,
      'stock_at': instance.stockAt,
      'type': instance.type,
    };
