import 'package:flutter_mask/core/api/locator_api.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:flutter_mask/domain/use_case/store/store_data.dart';
import 'package:latlong2/latlong.dart';

class GetStoreDataUseCase {
  final StoreRepository _repository;
  final LocatorApi _instance = LocatorApi.instance;

  GetStoreDataUseCase(this._repository);

  Future<List<StoreData>> call() async {
    final position = await _instance.getCurrentLocation();

    final LatLng latLng = LatLng(position.latitude, position.longitude);

    final stores = await _repository.getStores(latLng);

    final storeDatas = stores
        .where((store) =>
            store.remainStat == 'plenty' || store.remainStat == 'some')
        .map((store) => StoreData.fromStore(store, latLng))
        .toList()
      ..sort((store1, store2) => store1.km.compareTo(store2.km));

    return storeDatas;
  }
}
