import 'package:flutter_mask/domain/repository/map_repositroy.dart';

class OpenMapUseCase {
  final MapRepository _repository;

  OpenMapUseCase(this._repository);

  Future<void> call(double lat, double lng) async {
    await _repository.showOnTheMap(lat, lng);
  }
}
