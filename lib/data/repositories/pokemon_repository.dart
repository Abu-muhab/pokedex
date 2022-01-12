import 'package:pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteDataSource pokemonRemoteDataSource;
  final PokemonLocalDatasource pokemonLocalDatasource;
  PokemonRepositoryImpl(
      {required this.pokemonRemoteDataSource,
      required this.pokemonLocalDatasource});
  @override
  Future<Pokemon> get(dynamic nameOrId) {
    return pokemonRemoteDataSource.get(nameOrId);
  }

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20}) {
    return pokemonRemoteDataSource.getPokemons(offset: offset, limit: limit);
  }

  @override
  Future<void> addFavoritePokemon(Pokemon pokemon) {
    return pokemonLocalDatasource.addFavoritePokemon(pokemon);
  }

  @override
  Future<bool> isFavoritePokemon(Pokemon pokemon) {
    return pokemonLocalDatasource.isFavoritePokemon(pokemon);
  }

  @override
  Future<void> updateFavoritePokemon(Pokemon pokemon) {
    return pokemonLocalDatasource.updateFavoritePokemon(pokemon);
  }

  @override
  Future<void> removeFavoritePokemon(Pokemon pokemon) {
    return pokemonLocalDatasource.removeFavoritePokemon(pokemon);
  }

  @override
  Future<GetFavoritePokemonResponse> getFavoritePokemons(
      {bool? invalidateCache = false}) async {
    final response = await pokemonLocalDatasource.getFavoritePokemons();
    if (response.pokemons == null) {
      return GetFavoritePokemonResponse([], true);
    }

    if (invalidateCache == false) {
      return response;
    }

    //try to get the latest remote data for the favourites
    try {
      List<Future<Pokemon>> futures = [];
      for (var pokemon in response.pokemons!) {
        futures.add(get(pokemon.name));
      }

      //update the favorurites in local storage after successful fetch
      final remoteFavorites = await Future.wait(futures, eagerError: true);
      print(remoteFavorites);
      for (var element in remoteFavorites) {
        updateFavoritePokemon(element);
      }
      return GetFavoritePokemonResponse(remoteFavorites, false);
    } catch (err) {
      return response;
    }
  }
}
