part of 'favorite_pokemon_cubit.dart';

@freezed
class FavoritePokemonState with _$FavoritePokemonState {
  const factory FavoritePokemonState.initial() = FavoritePokemonInitialState;
  const factory FavoritePokemonState.loading() = FavoritePokemonLoadingState;
  const factory FavoritePokemonState.loaded(
      {List<Pokemon>? pokemon,
      bool? isCachedData}) = FavoritePokemonLoadedState;
  const factory FavoritePokemonState.error(String message) =
      FavoritePokemonErrorState;
}
