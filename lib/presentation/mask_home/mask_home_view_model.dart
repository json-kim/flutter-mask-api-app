import 'package:flutter/cupertino.dart';
import 'package:flutter_mask/domain/use_case/get_location_data_use_case.dart';
import 'package:flutter_mask/domain/use_case/open_map_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/get_store_data_use_case.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_state.dart';
import 'package:geolocator/geolocator.dart';

import 'mask_home_event.dart';

class MaskHomeViewModel with ChangeNotifier {
  final GetStoreDataUseCase _getStoreDataUseCase;
  final GetLocationDataUseCase _getLocationDataUseCase;
  final OpenMapUseCase _openMapUseCase;

  MaskHomeState _state = MaskHomeState(stores: [], isLoading: false);
  MaskHomeState get state => _state;

  MaskHomeViewModel(this._getStoreDataUseCase, this._getLocationDataUseCase,
      this._openMapUseCase) {
    loadMask();
  }

  void onEvent(MaskHomeEvent event) {
    event.when(load: loadMask, refresh: refresh);
  }

  Future<void> openMap(double lat, double lng) async {
    await _openMapUseCase(lat, lng);
  }

  Future<Position> loadPosition() async {
    return await _getLocationDataUseCase();
  }

  Future<void> loadMask() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final position = await loadPosition();
    print('${position.latitude} : ${position.longitude}');

    final result = await _getStoreDataUseCase(0, 0);

    _state = _state.copyWith(stores: result, isLoading: false);
    notifyListeners();
  }

  Future<void> refresh() async {
    await loadMask();
  }
}
