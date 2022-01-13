import 'package:flutter_mask/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';

class GetLocationDataUseCase {
  final LocationRepository<Position> _repository;

  GetLocationDataUseCase(this._repository);

  @override
  Future<Position> call() async {
    final result = await _repository.getCurrentLocation();

    return result;
  }
}
