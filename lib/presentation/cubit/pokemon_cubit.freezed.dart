// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

  PokemonInitialState initial() {
    return const PokemonInitialState();
  }

  PokemonLoadingState loading() {
    return const PokemonLoadingState();
  }

  PokemonLoadingMoreState loadingMore(List<Pokemon> pokemons) {
    return PokemonLoadingMoreState(
      pokemons,
    );
  }

  PokemonLoadedState loaded(List<Pokemon> pokemons) {
    return PokemonLoadedState(
      pokemons,
    );
  }

  PokemonErrorState error(String message) {
    return PokemonErrorState(
      message,
    );
  }
}

/// @nodoc
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;
}

/// @nodoc
abstract class $PokemonInitialStateCopyWith<$Res> {
  factory $PokemonInitialStateCopyWith(
          PokemonInitialState value, $Res Function(PokemonInitialState) then) =
      _$PokemonInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonInitialStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonInitialStateCopyWith<$Res> {
  _$PokemonInitialStateCopyWithImpl(
      PokemonInitialState _value, $Res Function(PokemonInitialState) _then)
      : super(_value, (v) => _then(v as PokemonInitialState));

  @override
  PokemonInitialState get _value => super._value as PokemonInitialState;
}

/// @nodoc

class _$PokemonInitialState implements PokemonInitialState {
  const _$PokemonInitialState();

  @override
  String toString() {
    return 'PokemonState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PokemonInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
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
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PokemonInitialState implements PokemonState {
  const factory PokemonInitialState() = _$PokemonInitialState;
}

/// @nodoc
abstract class $PokemonLoadingStateCopyWith<$Res> {
  factory $PokemonLoadingStateCopyWith(
          PokemonLoadingState value, $Res Function(PokemonLoadingState) then) =
      _$PokemonLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonLoadingStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonLoadingStateCopyWith<$Res> {
  _$PokemonLoadingStateCopyWithImpl(
      PokemonLoadingState _value, $Res Function(PokemonLoadingState) _then)
      : super(_value, (v) => _then(v as PokemonLoadingState));

  @override
  PokemonLoadingState get _value => super._value as PokemonLoadingState;
}

/// @nodoc

class _$PokemonLoadingState implements PokemonLoadingState {
  const _$PokemonLoadingState();

  @override
  String toString() {
    return 'PokemonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PokemonLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
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
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokemonLoadingState implements PokemonState {
  const factory PokemonLoadingState() = _$PokemonLoadingState;
}

/// @nodoc
abstract class $PokemonLoadingMoreStateCopyWith<$Res> {
  factory $PokemonLoadingMoreStateCopyWith(PokemonLoadingMoreState value,
          $Res Function(PokemonLoadingMoreState) then) =
      _$PokemonLoadingMoreStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class _$PokemonLoadingMoreStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonLoadingMoreStateCopyWith<$Res> {
  _$PokemonLoadingMoreStateCopyWithImpl(PokemonLoadingMoreState _value,
      $Res Function(PokemonLoadingMoreState) _then)
      : super(_value, (v) => _then(v as PokemonLoadingMoreState));

  @override
  PokemonLoadingMoreState get _value => super._value as PokemonLoadingMoreState;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(PokemonLoadingMoreState(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonLoadingMoreState implements PokemonLoadingMoreState {
  const _$PokemonLoadingMoreState(this.pokemons);

  @override
  final List<Pokemon> pokemons;

  @override
  String toString() {
    return 'PokemonState.loadingMore(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonLoadingMoreState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $PokemonLoadingMoreStateCopyWith<PokemonLoadingMoreState> get copyWith =>
      _$PokemonLoadingMoreStateCopyWithImpl<PokemonLoadingMoreState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return loadingMore(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) {
    return loadingMore?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class PokemonLoadingMoreState implements PokemonState {
  const factory PokemonLoadingMoreState(List<Pokemon> pokemons) =
      _$PokemonLoadingMoreState;

  List<Pokemon> get pokemons;
  @JsonKey(ignore: true)
  $PokemonLoadingMoreStateCopyWith<PokemonLoadingMoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonLoadedStateCopyWith<$Res> {
  factory $PokemonLoadedStateCopyWith(
          PokemonLoadedState value, $Res Function(PokemonLoadedState) then) =
      _$PokemonLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class _$PokemonLoadedStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonLoadedStateCopyWith<$Res> {
  _$PokemonLoadedStateCopyWithImpl(
      PokemonLoadedState _value, $Res Function(PokemonLoadedState) _then)
      : super(_value, (v) => _then(v as PokemonLoadedState));

  @override
  PokemonLoadedState get _value => super._value as PokemonLoadedState;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(PokemonLoadedState(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonLoadedState implements PokemonLoadedState {
  const _$PokemonLoadedState(this.pokemons);

  @override
  final List<Pokemon> pokemons;

  @override
  String toString() {
    return 'PokemonState.loaded(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonLoadedState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $PokemonLoadedStateCopyWith<PokemonLoadedState> get copyWith =>
      _$PokemonLoadedStateCopyWithImpl<PokemonLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PokemonLoadedState implements PokemonState {
  const factory PokemonLoadedState(List<Pokemon> pokemons) =
      _$PokemonLoadedState;

  List<Pokemon> get pokemons;
  @JsonKey(ignore: true)
  $PokemonLoadedStateCopyWith<PokemonLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonErrorStateCopyWith<$Res> {
  factory $PokemonErrorStateCopyWith(
          PokemonErrorState value, $Res Function(PokemonErrorState) then) =
      _$PokemonErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PokemonErrorStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonErrorStateCopyWith<$Res> {
  _$PokemonErrorStateCopyWithImpl(
      PokemonErrorState _value, $Res Function(PokemonErrorState) _then)
      : super(_value, (v) => _then(v as PokemonErrorState));

  @override
  PokemonErrorState get _value => super._value as PokemonErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PokemonErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonErrorState implements PokemonErrorState {
  const _$PokemonErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PokemonState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PokemonErrorStateCopyWith<PokemonErrorState> get copyWith =>
      _$PokemonErrorStateCopyWithImpl<PokemonErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loadingMore,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loadingMore,
    TResult Function(List<Pokemon> pokemons)? loaded,
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
    required TResult Function(PokemonInitialState value) initial,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonLoadingMoreState value) loadingMore,
    required TResult Function(PokemonLoadedState value) loaded,
    required TResult Function(PokemonErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitialState value)? initial,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonLoadingMoreState value)? loadingMore,
    TResult Function(PokemonLoadedState value)? loaded,
    TResult Function(PokemonErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PokemonErrorState implements PokemonState {
  const factory PokemonErrorState(String message) = _$PokemonErrorState;

  String get message;
  @JsonKey(ignore: true)
  $PokemonErrorStateCopyWith<PokemonErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
