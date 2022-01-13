// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mask_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MaskHomeStateTearOff {
  const _$MaskHomeStateTearOff();

  _MaskHomeState call(
      {required List<StoreData> stores, required bool isLoading}) {
    return _MaskHomeState(
      stores: stores,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $MaskHomeState = _$MaskHomeStateTearOff();

/// @nodoc
mixin _$MaskHomeState {
  List<StoreData> get stores => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaskHomeStateCopyWith<MaskHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaskHomeStateCopyWith<$Res> {
  factory $MaskHomeStateCopyWith(
          MaskHomeState value, $Res Function(MaskHomeState) then) =
      _$MaskHomeStateCopyWithImpl<$Res>;
  $Res call({List<StoreData> stores, bool isLoading});
}

/// @nodoc
class _$MaskHomeStateCopyWithImpl<$Res>
    implements $MaskHomeStateCopyWith<$Res> {
  _$MaskHomeStateCopyWithImpl(this._value, this._then);

  final MaskHomeState _value;
  // ignore: unused_field
  final $Res Function(MaskHomeState) _then;

  @override
  $Res call({
    Object? stores = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MaskHomeStateCopyWith<$Res>
    implements $MaskHomeStateCopyWith<$Res> {
  factory _$MaskHomeStateCopyWith(
          _MaskHomeState value, $Res Function(_MaskHomeState) then) =
      __$MaskHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StoreData> stores, bool isLoading});
}

/// @nodoc
class __$MaskHomeStateCopyWithImpl<$Res>
    extends _$MaskHomeStateCopyWithImpl<$Res>
    implements _$MaskHomeStateCopyWith<$Res> {
  __$MaskHomeStateCopyWithImpl(
      _MaskHomeState _value, $Res Function(_MaskHomeState) _then)
      : super(_value, (v) => _then(v as _MaskHomeState));

  @override
  _MaskHomeState get _value => super._value as _MaskHomeState;

  @override
  $Res call({
    Object? stores = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_MaskHomeState(
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MaskHomeState implements _MaskHomeState {
  const _$_MaskHomeState({required this.stores, required this.isLoading});

  @override
  final List<StoreData> stores;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MaskHomeState(stores: $stores, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MaskHomeState &&
            const DeepCollectionEquality().equals(other.stores, stores) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stores),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$MaskHomeStateCopyWith<_MaskHomeState> get copyWith =>
      __$MaskHomeStateCopyWithImpl<_MaskHomeState>(this, _$identity);
}

abstract class _MaskHomeState implements MaskHomeState {
  const factory _MaskHomeState(
      {required List<StoreData> stores,
      required bool isLoading}) = _$_MaskHomeState;

  @override
  List<StoreData> get stores;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$MaskHomeStateCopyWith<_MaskHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
