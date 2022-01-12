import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

part 'favorite_pokemon_state.dart';
part 'favorite_pokemon_cubit.freezed.dart';

class FavoritePokemonCubit extends Cubit<FavoritePokemonState> {
  final PokemonRepository pokemonRepository;
  FavoritePokemonCubit({required this.pokemonRepository})
      : super(const FavoritePokemonState.initial());

  Future<void> loadFavorites({bool? invalidateCache = false}) async {
    if (state is! FavoritePokemonLoadedState &&
        state is! FavoritePokemonLoadingState) {
      emit(const FavoritePokemonState.loading());
    }

    try {
      final response = await pokemonRepository.getFavoritePokemons(
          invalidateCache: invalidateCache);
      emit(FavoritePokemonState.loaded(
          pokemon: response.pokemons!, isCachedData: response.isCached!));
    } catch (e) {
      emit(FavoritePokemonState.error(e.toString()));
    }
  }

  Future<void> addToFavorites(Pokemon pokemon) async {
    emit(const FavoritePokemonState.loading());
    try {
      await pokemonRepository.addFavoritePokemon(pokemon);
      loadFavorites();
    } catch (e) {
      emit(FavoritePokemonState.error(e.toString()));
    }
  }

  Future<void> removeFromFavorites(Pokemon pokemon) async {
    emit(const FavoritePokemonState.loading());
    try {
      await pokemonRepository.removeFavoritePokemon(pokemon);
      loadFavorites();
    } catch (e) {
      emit(FavoritePokemonState.error(e.toString()));
    }
  }

  Future<bool> isFavorite(Pokemon pokemon) async {
    return await pokemonRepository.isFavoritePokemon(pokemon);
  }
}
