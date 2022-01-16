import 'package:flutter_mask/core/result/result.dart';
import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_mask/domain/model/store.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:latlong2/latlong.dart';

class StoreApiRepository implements StoreRepository {
  final MaskApi _maskApi;

  StoreApiRepository(this._maskApi);

  @override
  Future<Result<List<Store>>> getStores(LatLng pos) async {
    final Result<List> result =
        await _maskApi.fetch(pos.latitude, pos.longitude);

    return result.when(success: (jsonList) {
      try {
        final List<Store> stores =
            jsonList.map((e) => Store.fromJson(e)).toList();

        return Result.success(stores);
      } catch (error) {
        return Result.error('$runtimeType error : 데이터 파싱 에러 \n$error');
      }
    }, error: (message) {
      return Result.error(message);
    });
  }
}
