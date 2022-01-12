import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/data/repositories/pokemon_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

import 'pokemon_repository_test.mocks.dart';

@GenerateMocks([PokemonRemoteDataSource, PokemonLocalDatasource])
void main() {
  late MockPokemonRemoteDataSource mockRemoteDataSource;
  late MockPokemonLocalDatasource mockLocalDataSource;
  late PokemonRepositoryImpl pokemonRepository;

  setUp(() {
    mockRemoteDataSource = MockPokemonRemoteDataSource();
    mockLocalDataSource = MockPokemonLocalDatasource();
    pokemonRepository = PokemonRepositoryImpl(
      pokemonRemoteDataSource: mockRemoteDataSource,
      pokemonLocalDatasource: mockLocalDataSource,
    );
  });
  group('pokemonRepository', () {
    test(
        'getFavoritePokemons should return cached favorites when offline or remote source error',
        () async {
      when(mockRemoteDataSource.get(any)).thenThrow(Exception());
      when(mockRemoteDataSource.getFavoritePokemons()).thenThrow(Exception());
      when(mockLocalDataSource.getFavoritePokemons()).thenAnswer((_) async =>
          GetFavoritePokemonResponse([Pokemon(name: 'pokemon')], true));

      final response =
          await pokemonRepository.getFavoritePokemons(invalidateCache: true);

      expect(response.isCached, isTrue);
    });

    test(
        'getFavoritePokemons should return latest favorites remote data when network available',
        () async {
      when(mockRemoteDataSource.get(any))
          .thenAnswer((_) async => Pokemon(name: 'new_pokemon', id: 1));
      when(mockLocalDataSource.getFavoritePokemons()).thenAnswer((_) async =>
          GetFavoritePokemonResponse(
              [Pokemon(name: 'old_pokemon', id: 1)], true));

      final response =
          await pokemonRepository.getFavoritePokemons(invalidateCache: true);

      expect(response.isCached, isFalse);
      expect(response.pokemons!.first.name,
          (await mockRemoteDataSource.get(response.pokemons!.first.name)).name);
    });
  });
}
