// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mask_home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MaskHomeEventTearOff {
  const _$MaskHomeEventTearOff();

  Load load() {
    return const Load();
  }

  OpenMap openMap(StoreData store) {
    return OpenMap(
      store,
    );
  }
}

/// @nodoc
const $MaskHomeEvent = _$MaskHomeEventTearOff();

/// @nodoc
mixin _$MaskHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreData store) openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(OpenMap value) openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaskHomeEventCopyWith<$Res> {
  factory $MaskHomeEventCopyWith(
          MaskHomeEvent value, $Res Function(MaskHomeEvent) then) =
      _$MaskHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MaskHomeEventCopyWithImpl<$Res>
    implements $MaskHomeEventCopyWith<$Res> {
  _$MaskHomeEventCopyWithImpl(this._value, this._then);

  final MaskHomeEvent _value;
  // ignore: unused_field
  final $Res Function(MaskHomeEvent) _then;
}

/// @nodoc
abstract class $LoadCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadCopyWithImpl<$Res> extends _$MaskHomeEventCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;
}

/// @nodoc

class _$Load implements Load {
  const _$Load();

  @override
  String toString() {
    return 'MaskHomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreData store) openMap,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(OpenMap value) openMap,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements MaskHomeEvent {
  const factory Load() = _$Load;
}

/// @nodoc
abstract class $OpenMapCopyWith<$Res> {
  factory $OpenMapCopyWith(OpenMap value, $Res Function(OpenMap) then) =
      _$OpenMapCopyWithImpl<$Res>;
  $Res call({StoreData store});
}

/// @nodoc
class _$OpenMapCopyWithImpl<$Res> extends _$MaskHomeEventCopyWithImpl<$Res>
    implements $OpenMapCopyWith<$Res> {
  _$OpenMapCopyWithImpl(OpenMap _value, $Res Function(OpenMap) _then)
      : super(_value, (v) => _then(v as OpenMap));

  @override
  OpenMap get _value => super._value as OpenMap;

  @override
  $Res call({
    Object? store = freezed,
  }) {
    return _then(OpenMap(
      store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreData,
    ));
  }
}

/// @nodoc

class _$OpenMap implements OpenMap {
  const _$OpenMap(this.store);

  @override
  final StoreData store;

  @override
  String toString() {
    return 'MaskHomeEvent.openMap(store: $store)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenMap &&
            const DeepCollectionEquality().equals(other.store, store));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(store));

  @JsonKey(ignore: true)
  @override
  $OpenMapCopyWith<OpenMap> get copyWith =>
      _$OpenMapCopyWithImpl<OpenMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreData store) openMap,
  }) {
    return openMap(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
  }) {
    return openMap?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreData store)? openMap,
    required TResult orElse(),
  }) {
    if (openMap != null) {
      return openMap(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(OpenMap value) openMap,
  }) {
    return openMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
  }) {
    return openMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(OpenMap value)? openMap,
    required TResult orElse(),
  }) {
    if (openMap != null) {
      return openMap(this);
    }
    return orElse();
  }
}

abstract class OpenMap implements MaskHomeEvent {
  const factory OpenMap(StoreData store) = _$OpenMap;

  StoreData get store;
  @JsonKey(ignore: true)
  $OpenMapCopyWith<OpenMap> get copyWith => throw _privateConstructorUsedError;
}
