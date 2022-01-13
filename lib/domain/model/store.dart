import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    required String addr,
    required String code,
    @JsonKey(name: 'created_at') required String? createdAt,
    required num lat,
    required num lng,
    required String name,
    @JsonKey(name: 'remain_stat') required String? remainStat,
    @JsonKey(name: 'stock_at') required String? stockAt,
    required String type,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
