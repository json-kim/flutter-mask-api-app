import 'package:flutter_mask/domain/model/store.dart';
import 'package:latlong2/latlong.dart';

abstract class StoreRepository {
  Future<List<Store>> getStores(LatLng pos);
}
