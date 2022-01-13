import 'package:flutter_mask/domain/repository/location_repository.dart';

class LocationFakeRepository implements LocationRepository<String> {
  @override
  Future<String> getCurrentLocation() async {
    return 'hi';
  }
}
