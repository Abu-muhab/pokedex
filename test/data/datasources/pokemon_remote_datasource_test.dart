import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/data/network/pokemon_rest_client.dart';

import 'pokemon_remote_datasource_test.mocks.dart';

@GenerateMocks([PokemonRestClient])
void main() {
  late MockPokemonRestClient mockPokemonRestClient;
  late PokemonRemoteDataSourceImpl pokemonRemoteDataSource;

  setUp(() {
    mockPokemonRestClient = MockPokemonRestClient();
    pokemonRemoteDataSource = PokemonRemoteDataSourceImpl(
      mockPokemonRestClient,
    );
  });
  group('pokemonRemoteDataSource', () {
    test('should throw an error when offline', () async {
      when(mockPokemonRestClient.getPokemons())
          .thenThrow(const SocketException('No Internet'));
      when(mockPokemonRestClient.getPokemon('poke_poke'))
          .thenThrow(const SocketException('No Internet'));

      expect(() => pokemonRemoteDataSource.get('poke_poke'), throwsException);
      expect(() => pokemonRemoteDataSource.getPokemons(), throwsException);
    });
  });
}
