import 'package:freezed_annotation/freezed_annotation.dart';

part 'mask_home_ui_event.freezed.dart';

@freezed
class MaskHomeUiEvent with _$MaskHomeUiEvent {
  const factory MaskHomeUiEvent.snackBar(String message) = SnackBar;
  const factory MaskHomeUiEvent.error(String message) = Error;
}
