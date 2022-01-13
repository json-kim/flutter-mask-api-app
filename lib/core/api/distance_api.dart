import 'package:latlong2/latlong.dart';

class DistanceApi {
  final Distance _distance = const Distance();

  static final DistanceApi _instance = DistanceApi._();
  static DistanceApi get instance => _instance;

  DistanceApi._();

  double getKmDistance(LatLng pos1, LatLng pos2) {
    return _distance.as(LengthUnit.Kilometer, pos1, pos2);
  }
}
