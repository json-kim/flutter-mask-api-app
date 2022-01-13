import 'package:flutter/cupertino.dart';
import 'package:flutter_mask/domain/use_case/store/get_store_data_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/show_store_on_map_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/store_data.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_state.dart';

import 'mask_home_event.dart';

class MaskHomeViewModel with ChangeNotifier {
  final GetStoreDataUseCase _getStoreDataUseCase;
  final ShowStoreOnMapUseCase _showStoreOnMapUseCase;

  MaskHomeState _state = MaskHomeState(stores: [], isLoading: false);
  MaskHomeState get state => _state;

  MaskHomeViewModel(this._getStoreDataUseCase, this._showStoreOnMapUseCase) {
    loadMask();
  }

  void onEvent(MaskHomeEvent event) {
    event.when(load: loadMask, refresh: refresh);
  }

  Future<void> openMap(StoreData store) async {
    await _showStoreOnMapUseCase(store);
  }

  Future<void> loadMask() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getStoreDataUseCase();

    _state = _state.copyWith(stores: result, isLoading: false);
    notifyListeners();
  }

  Future<void> refresh() async {
    await loadMask();
  }
}
