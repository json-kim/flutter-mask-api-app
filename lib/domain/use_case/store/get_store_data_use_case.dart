import 'package:flutter_mask/core/api/locator_api.dart';
import 'package:flutter_mask/core/result/result.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:flutter_mask/domain/use_case/store/store_data.dart';
import 'package:latlong2/latlong.dart';

class GetStoreDataUseCase {
  final StoreRepository _repository;
  final LocatorApi _instance = LocatorApi.instance;

  GetStoreDataUseCase(this._repository);

  Future<Result<List<StoreData>>> call() async {
    try {
      final position = await _instance.getCurrentLocation();

      final LatLng latLng = LatLng(position.latitude, position.longitude);

      final result = await _repository.getStores(latLng);

      return result.when(success: (stores) {
        final storeDatas = stores
            .where((store) =>
                store.remainStat == 'plenty' || store.remainStat == 'some')
            .map((store) => StoreData.fromStore(store, latLng))
            .toList()
          ..sort((store1, store2) => store1.km.compareTo(store2.km));

        return Result.success(storeDatas);
      }, error: (message) {
        return Result.error(message);
      });
    } catch (error) {
      return Result.error('$runtimeType : 에러 발생 \n$error');
    }
  }
}
