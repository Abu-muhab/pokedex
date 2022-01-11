// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritePokemonStateTearOff {
  const _$FavoritePokemonStateTearOff();

  FavoritePokemonInitialState initial() {
    return const FavoritePokemonInitialState();
  }

  FavoritePokemonLoadingState loading() {
    return const FavoritePokemonLoadingState();
  }

  FavoritePokemonLoadedState loaded(
      {List<Pokemon>? pokemon, bool? isCachedData}) {
    return FavoritePokemonLoadedState(
      pokemon: pokemon,
      isCachedData: isCachedData,
    );
  }

  FavoritePokemonErrorState error(String message) {
    return FavoritePokemonErrorState(
      message,
    );
  }
}

/// @nodoc
const $FavoritePokemonState = _$FavoritePokemonStateTearOff();

/// @nodoc
mixin _$FavoritePokemonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon>? pokemon, bool? isCachedData)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePokemonInitialState value) initial,
    required TResult Function(FavoritePokemonLoadingState value) loading,
    required TResult Function(FavoritePokemonLoadedState value) loaded,
    required TResult Function(FavoritePokemonErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePokemonStateCopyWith<$Res> {
  factory $FavoritePokemonStateCopyWith(FavoritePokemonState value,
          $Res Function(FavoritePokemonState) then) =
      _$FavoritePokemonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePokemonStateCopyWithImpl<$Res>
    implements $FavoritePokemonStateCopyWith<$Res> {
  _$FavoritePokemonStateCopyWithImpl(this._value, this._then);

  final FavoritePokemonState _value;
  // ignore: unused_field
  final $Res Function(FavoritePokemonState) _then;
}

/// @nodoc
abstract class $FavoritePokemonInitialStateCopyWith<$Res> {
  factory $FavoritePokemonInitialStateCopyWith(
          FavoritePokemonInitialState value,
          $Res Function(FavoritePokemonInitialState) then) =
      _$FavoritePokemonInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePokemonInitialStateCopyWithImpl<$Res>
    extends _$FavoritePokemonStateCopyWithImpl<$Res>
    implements $FavoritePokemonInitialStateCopyWith<$Res> {
  _$FavoritePokemonInitialStateCopyWithImpl(FavoritePokemonInitialState _value,
      $Res Function(FavoritePokemonInitialState) _then)
      : super(_value, (v) => _then(v as FavoritePokemonInitialState));

  @override
  FavoritePokemonInitialState get _value =>
      super._value as FavoritePokemonInitialState;
}

/// @nodoc

class _$FavoritePokemonInitialState implements FavoritePokemonInitialState {
  const _$FavoritePokemonInitialState();

  @override
  String toString() {
    return 'FavoritePokemonState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePokemonInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon>? pokemon, bool? isCachedData)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePokemonInitialState value) initial,
    required TResult Function(FavoritePokemonLoadingState value) loading,
    required TResult Function(FavoritePokemonLoadedState value) loaded,
    required TResult Function(FavoritePokemonErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoritePokemonInitialState implements FavoritePokemonState {
  const factory FavoritePokemonInitialState() = _$FavoritePokemonInitialState;
}

/// @nodoc
abstract class $FavoritePokemonLoadingStateCopyWith<$Res> {
  factory $FavoritePokemonLoadingStateCopyWith(
          FavoritePokemonLoadingState value,
          $Res Function(FavoritePokemonLoadingState) then) =
      _$FavoritePokemonLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePokemonLoadingStateCopyWithImpl<$Res>
    extends _$FavoritePokemonStateCopyWithImpl<$Res>
    implements $FavoritePokemonLoadingStateCopyWith<$Res> {
  _$FavoritePokemonLoadingStateCopyWithImpl(FavoritePokemonLoadingState _value,
      $Res Function(FavoritePokemonLoadingState) _then)
      : super(_value, (v) => _then(v as FavoritePokemonLoadingState));

  @override
  FavoritePokemonLoadingState get _value =>
      super._value as FavoritePokemonLoadingState;
}

/// @nodoc

class _$FavoritePokemonLoadingState implements FavoritePokemonLoadingState {
  const _$FavoritePokemonLoadingState();

  @override
  String toString() {
    return 'FavoritePokemonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePokemonLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon>? pokemon, bool? isCachedData)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePokemonInitialState value) initial,
    required TResult Function(FavoritePokemonLoadingState value) loading,
    required TResult Function(FavoritePokemonLoadedState value) loaded,
    required TResult Function(FavoritePokemonErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritePokemonLoadingState implements FavoritePokemonState {
  const factory FavoritePokemonLoadingState() = _$FavoritePokemonLoadingState;
}

/// @nodoc
abstract class $FavoritePokemonLoadedStateCopyWith<$Res> {
  factory $FavoritePokemonLoadedStateCopyWith(FavoritePokemonLoadedState value,
          $Res Function(FavoritePokemonLoadedState) then) =
      _$FavoritePokemonLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon>? pokemon, bool? isCachedData});
}

/// @nodoc
class _$FavoritePokemonLoadedStateCopyWithImpl<$Res>
    extends _$FavoritePokemonStateCopyWithImpl<$Res>
    implements $FavoritePokemonLoadedStateCopyWith<$Res> {
  _$FavoritePokemonLoadedStateCopyWithImpl(FavoritePokemonLoadedState _value,
      $Res Function(FavoritePokemonLoadedState) _then)
      : super(_value, (v) => _then(v as FavoritePokemonLoadedState));

  @override
  FavoritePokemonLoadedState get _value =>
      super._value as FavoritePokemonLoadedState;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? isCachedData = freezed,
  }) {
    return _then(FavoritePokemonLoadedState(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
      isCachedData: isCachedData == freezed
          ? _value.isCachedData
          : isCachedData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FavoritePokemonLoadedState implements FavoritePokemonLoadedState {
  const _$FavoritePokemonLoadedState({this.pokemon, this.isCachedData});

  @override
  final List<Pokemon>? pokemon;
  @override
  final bool? isCachedData;

  @override
  String toString() {
    return 'FavoritePokemonState.loaded(pokemon: $pokemon, isCachedData: $isCachedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePokemonLoadedState &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon) &&
            const DeepCollectionEquality()
                .equals(other.isCachedData, isCachedData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pokemon),
      const DeepCollectionEquality().hash(isCachedData));

  @JsonKey(ignore: true)
  @override
  $FavoritePokemonLoadedStateCopyWith<FavoritePokemonLoadedState>
      get copyWith =>
          _$FavoritePokemonLoadedStateCopyWithImpl<FavoritePokemonLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon>? pokemon, bool? isCachedData)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pokemon, isCachedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(pokemon, isCachedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pokemon, isCachedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePokemonInitialState value) initial,
    required TResult Function(FavoritePokemonLoadingState value) loading,
    required TResult Function(FavoritePokemonLoadedState value) loaded,
    required TResult Function(FavoritePokemonErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritePokemonLoadedState implements FavoritePokemonState {
  const factory FavoritePokemonLoadedState(
      {List<Pokemon>? pokemon,
      bool? isCachedData}) = _$FavoritePokemonLoadedState;

  List<Pokemon>? get pokemon;
  bool? get isCachedData;
  @JsonKey(ignore: true)
  $FavoritePokemonLoadedStateCopyWith<FavoritePokemonLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePokemonErrorStateCopyWith<$Res> {
  factory $FavoritePokemonErrorStateCopyWith(FavoritePokemonErrorState value,
          $Res Function(FavoritePokemonErrorState) then) =
      _$FavoritePokemonErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FavoritePokemonErrorStateCopyWithImpl<$Res>
    extends _$FavoritePokemonStateCopyWithImpl<$Res>
    implements $FavoritePokemonErrorStateCopyWith<$Res> {
  _$FavoritePokemonErrorStateCopyWithImpl(FavoritePokemonErrorState _value,
      $Res Function(FavoritePokemonErrorState) _then)
      : super(_value, (v) => _then(v as FavoritePokemonErrorState));

  @override
  FavoritePokemonErrorState get _value =>
      super._value as FavoritePokemonErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FavoritePokemonErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoritePokemonErrorState implements FavoritePokemonErrorState {
  const _$FavoritePokemonErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritePokemonState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePokemonErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FavoritePokemonErrorStateCopyWith<FavoritePokemonErrorState> get copyWith =>
      _$FavoritePokemonErrorStateCopyWithImpl<FavoritePokemonErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon>? pokemon, bool? isCachedData)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon>? pokemon, bool? isCachedData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePokemonInitialState value) initial,
    required TResult Function(FavoritePokemonLoadingState value) loading,
    required TResult Function(FavoritePokemonLoadedState value) loaded,
    required TResult Function(FavoritePokemonErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePokemonInitialState value)? initial,
    TResult Function(FavoritePokemonLoadingState value)? loading,
    TResult Function(FavoritePokemonLoadedState value)? loaded,
    TResult Function(FavoritePokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritePokemonErrorState implements FavoritePokemonState {
  const factory FavoritePokemonErrorState(String message) =
      _$FavoritePokemonErrorState;

  String get message;
  @JsonKey(ignore: true)
  $FavoritePokemonErrorStateCopyWith<FavoritePokemonErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
