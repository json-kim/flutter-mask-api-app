import 'package:freezed_annotation/freezed_annotation.dart';

part 'mask_home_event.freezed.dart';

@freezed
class MaskHomeEvent with _$MaskHomeEvent {
  const factory MaskHomeEvent.load() = Load;
  const factory MaskHomeEvent.refresh() = Refresh;
}
