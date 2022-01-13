import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_mask/domain/model/store.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:latlong2/latlong.dart';

class StoreApiRepository implements StoreRepository {
  final MaskApi _maskApi;

  StoreApiRepository(this._maskApi);

  @override
  Future<List<Store>> getStores(LatLng pos) async {
    final List listMap = await _maskApi.fetch(pos.latitude, pos.longitude);
    final List<Store> stores = listMap.map((e) => Store.fromJson(e)).toList();
    return stores;
  }
}
