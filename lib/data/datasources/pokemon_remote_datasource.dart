import 'package:pokedex/data/network/pokemon_rest_client.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

abstract class PokemonRemoteDataSource extends PokemonRepository {}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final PokemonRestClient _pokemonRestClient;
  PokemonRemoteDataSourceImpl(this._pokemonRestClient);

  @override
  Future<Pokemon> get(dynamic nameOrId) {
    return _pokemonRestClient.getPokemon(nameOrId);
  }

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 15}) async {
    final response =
        await _pokemonRestClient.getPokemons(offset: offset, limit: limit);
    List<Future<Pokemon>> pokemonsFutures = response.results
        .map((e) => _pokemonRestClient.getPokemon(e.name))
        .toList();
    return await Future.wait(pokemonsFutures);
  }

  @override
  Future<void> addFavoritePokemon(Pokemon pokemon) {
    throw UnimplementedError();
  }

  @override
  Future<GetFavoritePokemonResponse> getFavoritePokemons(
      {bool? invalidateCache}) {
    throw UnimplementedError();
  }

  @override
  Future<void> removeFavoritePokemon(Pokemon pokemon) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateFavoritePokemon(Pokemon pokemon) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isFavoritePokemon(Pokemon pokemon) {
    throw UnimplementedError();
  }
}
