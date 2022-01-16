import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_mask/domain/use_case/store/get_store_data_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/show_store_on_map_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/store_data.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_state.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_ui_event.dart';

import 'mask_home_event.dart';

class MaskHomeViewModel with ChangeNotifier {
  final GetStoreDataUseCase _getStoreDataUseCase;
  final ShowStoreOnMapUseCase _showStoreOnMapUseCase;

  final _eventController = StreamController<MaskHomeUiEvent>.broadcast();
  Stream<MaskHomeUiEvent> get stream => _eventController.stream;

  MaskHomeState _state = const MaskHomeState();
  MaskHomeState get state => _state;

  MaskHomeViewModel(this._getStoreDataUseCase, this._showStoreOnMapUseCase) {
    _loadMask();
  }

  void onEvent(MaskHomeEvent event) {
    event.when(load: _loadMask, openMap: _openMap);
  }

  Future<void> _openMap(StoreData store) async {
    final result = await _showStoreOnMapUseCase(store);

    result.when(
        success: (_) {},
        error: (message) {
          debugPrint(message);
          _eventController.add(const MaskHomeUiEvent.snackBar('지도 불러오기 실패'));
        });
  }

  Future<void> _loadMask() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getStoreDataUseCase();

    result.when(success: (storeDatas) {
      _state = _state.copyWith(stores: storeDatas);
    }, error: (message) {
      debugPrint(message);
      _state = _state.copyWith(stores: []);
      _eventController.add(const MaskHomeUiEvent.snackBar('데이터 불러오기 실패'));
    });

    _state = _state.copyWith(isLoading: false);
    notifyListeners();
  }
}
