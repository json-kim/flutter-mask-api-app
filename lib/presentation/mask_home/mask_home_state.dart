import 'package:flutter_mask/domain/use_case/store/store_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mask_home_state.freezed.dart';

@freezed
class MaskHomeState with _$MaskHomeState {
  const factory MaskHomeState({
    required List<StoreData> stores,
    required bool isLoading,
  }) = _MaskHomeState;
}
