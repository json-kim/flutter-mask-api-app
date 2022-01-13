import 'package:flutter_mask/core/api/distance_api.dart';
import 'package:flutter_mask/domain/model/store.dart';
import 'package:latlong2/latlong.dart';

class StoreData {
  final String name;
  final String addr;
  final double lat;
  final double lng;
  final String? remainStat;
  final double km;

  StoreData({
    required this.name,
    required this.addr,
    required this.lat,
    required this.lng,
    required this.remainStat,
    required this.km,
  });

  factory StoreData.fromStore(Store store, LatLng currentPos) {
    final km = DistanceApi.instance.getKmDistance(
        LatLng(store.lat as double, store.lng as double), currentPos);

    return StoreData(
        name: store.name,
        addr: store.addr,
        lat: store.lat / 1,
        lng: store.lng / 1,
        remainStat: store.remainStat,
        km: km);
  }
}
