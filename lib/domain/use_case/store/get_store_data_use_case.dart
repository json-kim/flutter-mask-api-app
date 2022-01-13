import 'package:flutter_mask/domain/model/store.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';

class GetStoreDataUseCase {
  final StoreRepository _repository;

  GetStoreDataUseCase(this._repository);

  Future<List<Store>> call(double lat, double lng) async {
    final stores = await _repository.getStores();

    return stores
        .where((store) =>
            store.remainStat == 'plenty' || store.remainStat == 'some')
        .toList();
  }
}
