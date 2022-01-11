import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon.dart';

part 'pokemon_repository.freezed.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20});
  Future<Pokemon> get(dynamic nameOrId);
  Future<GetFavoritePokemonResponse> getFavoritePokemons(
      {bool? invalidateCache = false});
  Future<void> removeFavoritePokemon(Pokemon pokemon);
  Future<void> updateFavoritePokemon(Pokemon pokemon);
  Future<void> addFavoritePokemon(Pokemon pokemon);
  Future<bool> isFavoritePokemon(Pokemon pokemon);
}

@freezed
class GetFavoritePokemonResponse with _$GetFavoritePokemonResponse {
  factory GetFavoritePokemonResponse(List<Pokemon>? pokemons, bool? isCached) =
      _GetFavoritePokemonResponse;
}
