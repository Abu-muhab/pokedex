part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.initial() = Initial;
  const factory PokemonState.loading() = Loading;
  const factory PokemonState.loaded(List<Pokemon> pokemons) = Loaded;
  const factory PokemonState.error(String message) = Error;
}
