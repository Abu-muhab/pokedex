import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/data/repositories/pokemon_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

import 'package:pokedex/main.dart';

import 'pokemon_repository_test.mocks.dart';

@GenerateMocks([PokemonRemoteDataSource, PokemonLocalDatasource])
void main() {
  group('pokemonRepository', () {
    test('should return cached favarites when offline', () async {
      final mockRemoteDataSource = MockPokemonRemoteDataSource();
      final mockLocalDataSource = MockPokemonLocalDatasource();

      when(mockRemoteDataSource.get(any)).thenThrow(Exception());
      when(mockRemoteDataSource.getFavoritePokemons()).thenThrow(Exception());
      when(mockLocalDataSource.getFavoritePokemons()).thenAnswer((_) async =>
          GetFavoritePokemonResponse([Pokemon(name: 'pokemon')], true));

      final pokemonRepository = PokemonRepositoryImpl(
        pokemonRemoteDataSource: mockRemoteDataSource,
        pokemonLocalDatasource: mockLocalDataSource,
      );

      final response =
          await pokemonRepository.getFavoritePokemons(invalidateCache: true);

      expect(response.isCached, isTrue);
    });
  });
}
