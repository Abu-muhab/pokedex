import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteDataSource pokemonRemoteDataSource;
  PokemonRepositoryImpl({required this.pokemonRemoteDataSource});
  @override
  Future<Pokemon> get(dynamic nameOrId) {
    return pokemonRemoteDataSource.get(nameOrId);
  }

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20}) {
    return pokemonRemoteDataSource.getPokemons(offset: offset, limit: limit);
  }
}
