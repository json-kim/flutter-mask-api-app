import 'package:geolocator/geolocator.dart';

class LocatorApi {
  LocatorApi._();

  static final LocatorApi _instance = LocatorApi._();
  static LocatorApi get instance => _instance;

  Future<bool> _checkPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location Permissions are permanently denied, we cannot request permissions');
    }

    return true;
  }

  Future<Position> getCurrentLocation() async {
    final isPermission = await _checkPermission();
    if (!isPermission) {
      return Future.error('error');
    }

    return await Geolocator.getCurrentPosition();
  }
}
