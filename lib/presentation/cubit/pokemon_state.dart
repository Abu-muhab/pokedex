part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.initial() = PokemonInitialState;
  const factory PokemonState.loading() = PokemonLoadingState;
  const factory PokemonState.loadingMore(List<Pokemon> pokemons) =
      PokemonLoadingMoreState;
  const factory PokemonState.loaded(List<Pokemon> pokemons) =
      PokemonLoadedState;
  const factory PokemonState.error(String message) = PokemonErrorState;
}
