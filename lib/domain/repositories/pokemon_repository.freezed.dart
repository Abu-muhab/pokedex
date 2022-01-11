// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetFavoritePokemonResponseTearOff {
  const _$GetFavoritePokemonResponseTearOff();

  _GetFavoritePokemonResponse call(List<Pokemon>? pokemons, bool? isCached) {
    return _GetFavoritePokemonResponse(
      pokemons,
      isCached,
    );
  }
}

/// @nodoc
const $GetFavoritePokemonResponse = _$GetFavoritePokemonResponseTearOff();

/// @nodoc
mixin _$GetFavoritePokemonResponse {
  List<Pokemon>? get pokemons => throw _privateConstructorUsedError;
  bool? get isCached => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetFavoritePokemonResponseCopyWith<GetFavoritePokemonResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoritePokemonResponseCopyWith<$Res> {
  factory $GetFavoritePokemonResponseCopyWith(GetFavoritePokemonResponse value,
          $Res Function(GetFavoritePokemonResponse) then) =
      _$GetFavoritePokemonResponseCopyWithImpl<$Res>;
  $Res call({List<Pokemon>? pokemons, bool? isCached});
}

/// @nodoc
class _$GetFavoritePokemonResponseCopyWithImpl<$Res>
    implements $GetFavoritePokemonResponseCopyWith<$Res> {
  _$GetFavoritePokemonResponseCopyWithImpl(this._value, this._then);

  final GetFavoritePokemonResponse _value;
  // ignore: unused_field
  final $Res Function(GetFavoritePokemonResponse) _then;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? isCached = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
      isCached: isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetFavoritePokemonResponseCopyWith<$Res>
    implements $GetFavoritePokemonResponseCopyWith<$Res> {
  factory _$GetFavoritePokemonResponseCopyWith(
          _GetFavoritePokemonResponse value,
          $Res Function(_GetFavoritePokemonResponse) then) =
      __$GetFavoritePokemonResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Pokemon>? pokemons, bool? isCached});
}

/// @nodoc
class __$GetFavoritePokemonResponseCopyWithImpl<$Res>
    extends _$GetFavoritePokemonResponseCopyWithImpl<$Res>
    implements _$GetFavoritePokemonResponseCopyWith<$Res> {
  __$GetFavoritePokemonResponseCopyWithImpl(_GetFavoritePokemonResponse _value,
      $Res Function(_GetFavoritePokemonResponse) _then)
      : super(_value, (v) => _then(v as _GetFavoritePokemonResponse));

  @override
  _GetFavoritePokemonResponse get _value =>
      super._value as _GetFavoritePokemonResponse;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? isCached = freezed,
  }) {
    return _then(_GetFavoritePokemonResponse(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
      isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_GetFavoritePokemonResponse implements _GetFavoritePokemonResponse {
  _$_GetFavoritePokemonResponse(this.pokemons, this.isCached);

  @override
  final List<Pokemon>? pokemons;
  @override
  final bool? isCached;

  @override
  String toString() {
    return 'GetFavoritePokemonResponse(pokemons: $pokemons, isCached: $isCached)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFavoritePokemonResponse &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons) &&
            const DeepCollectionEquality().equals(other.isCached, isCached));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pokemons),
      const DeepCollectionEquality().hash(isCached));

  @JsonKey(ignore: true)
  @override
  _$GetFavoritePokemonResponseCopyWith<_GetFavoritePokemonResponse>
      get copyWith => __$GetFavoritePokemonResponseCopyWithImpl<
          _GetFavoritePokemonResponse>(this, _$identity);
}

abstract class _GetFavoritePokemonResponse
    implements GetFavoritePokemonResponse {
  factory _GetFavoritePokemonResponse(List<Pokemon>? pokemons, bool? isCached) =
      _$_GetFavoritePokemonResponse;

  @override
  List<Pokemon>? get pokemons;
  @override
  bool? get isCached;
  @override
  @JsonKey(ignore: true)
  _$GetFavoritePokemonResponseCopyWith<_GetFavoritePokemonResponse>
      get copyWith => throw _privateConstructorUsedError;
}
