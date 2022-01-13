import 'package:flutter_mask/core/api/locator_api.dart';
import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_mask/domain/model/store.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:geolocator/geolocator.dart';

class StoreApiRepository implements StoreRepository {
  final MaskApi _maskApi;
  final LocatorApi _locatorApi;

  StoreApiRepository(this._maskApi, this._locatorApi);

  @override
  Future<List<Store>> getStores() async {
    final position = await getCurrentLocation();

    final List listMap = await _maskApi.fetch();
    final List<Store> stores = listMap.map((e) => Store.fromJson(e)).toList();
    return stores;
  }

  @override
  Future<Position> getCurrentLocation() async {
    final isPermissioned = await _locatorApi.checkPermission();
    if (!isPermissioned) {
      return Future.error('error');
    }

    final Position position = await _locatorApi.getCurrentPosition();

    return position;
  }
}
