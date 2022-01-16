import 'package:flutter_mask/core/result/result.dart';
import 'package:flutter_mask/domain/model/store.dart';
import 'package:latlong2/latlong.dart';

abstract class StoreRepository {
  Future<Result<List<Store>>> getStores(LatLng pos);
}
