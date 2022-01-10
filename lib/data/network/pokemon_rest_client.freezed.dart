// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_rest_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPokemonsResponse _$GetPokemonsResponseFromJson(Map<String, dynamic> json) {
  return _GetPokemonsResponse.fromJson(json);
}

/// @nodoc
class _$GetPokemonsResponseTearOff {
  const _$GetPokemonsResponseTearOff();

  _GetPokemonsResponse call(
      {required int count,
      required String next,
      required List<Pokemon> results}) {
    return _GetPokemonsResponse(
      count: count,
      next: next,
      results: results,
    );
  }

  GetPokemonsResponse fromJson(Map<String, Object?> json) {
    return GetPokemonsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPokemonsResponse = _$GetPokemonsResponseTearOff();

/// @nodoc
mixin _$GetPokemonsResponse {
  int get count => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  List<Pokemon> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPokemonsResponseCopyWith<GetPokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPokemonsResponseCopyWith<$Res> {
  factory $GetPokemonsResponseCopyWith(
          GetPokemonsResponse value, $Res Function(GetPokemonsResponse) then) =
      _$GetPokemonsResponseCopyWithImpl<$Res>;
  $Res call({int count, String next, List<Pokemon> results});
}

/// @nodoc
class _$GetPokemonsResponseCopyWithImpl<$Res>
    implements $GetPokemonsResponseCopyWith<$Res> {
  _$GetPokemonsResponseCopyWithImpl(this._value, this._then);

  final GetPokemonsResponse _value;
  // ignore: unused_field
  final $Res Function(GetPokemonsResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
abstract class _$GetPokemonsResponseCopyWith<$Res>
    implements $GetPokemonsResponseCopyWith<$Res> {
  factory _$GetPokemonsResponseCopyWith(_GetPokemonsResponse value,
          $Res Function(_GetPokemonsResponse) then) =
      __$GetPokemonsResponseCopyWithImpl<$Res>;
  @override
  $Res call({int count, String next, List<Pokemon> results});
}

/// @nodoc
class __$GetPokemonsResponseCopyWithImpl<$Res>
    extends _$GetPokemonsResponseCopyWithImpl<$Res>
    implements _$GetPokemonsResponseCopyWith<$Res> {
  __$GetPokemonsResponseCopyWithImpl(
      _GetPokemonsResponse _value, $Res Function(_GetPokemonsResponse) _then)
      : super(_value, (v) => _then(v as _GetPokemonsResponse));

  @override
  _GetPokemonsResponse get _value => super._value as _GetPokemonsResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? results = freezed,
  }) {
    return _then(_GetPokemonsResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPokemonsResponse implements _GetPokemonsResponse {
  _$_GetPokemonsResponse(
      {required this.count, required this.next, required this.results});

  factory _$_GetPokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPokemonsResponseFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final List<Pokemon> results;

  @override
  String toString() {
    return 'GetPokemonsResponse(count: $count, next: $next, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPokemonsResponse &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$GetPokemonsResponseCopyWith<_GetPokemonsResponse> get copyWith =>
      __$GetPokemonsResponseCopyWithImpl<_GetPokemonsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPokemonsResponseToJson(this);
  }
}

abstract class _GetPokemonsResponse implements GetPokemonsResponse {
  factory _GetPokemonsResponse(
      {required int count,
      required String next,
      required List<Pokemon> results}) = _$_GetPokemonsResponse;

  factory _GetPokemonsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPokemonsResponse.fromJson;

  @override
  int get count;
  @override
  String get next;
  @override
  List<Pokemon> get results;
  @override
  @JsonKey(ignore: true)
  _$GetPokemonsResponseCopyWith<_GetPokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
