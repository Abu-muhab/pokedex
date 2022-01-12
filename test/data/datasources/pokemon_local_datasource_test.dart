import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pokemon_local_datasource_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late MockSharedPreferences mockSharedPreferences;
  late PokemonLocalDatasourceImpl localDatasource;
  String? favorites;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    localDatasource = PokemonLocalDatasourceImpl(mockSharedPreferences);
    when(mockSharedPreferences.getString('favourites'))
        .thenAnswer((_) => favorites);
    when(mockSharedPreferences.setString('favourites', any))
        .thenAnswer((invocation) async {
      favorites = invocation.positionalArguments[1];
      return true;
    });
  });
  group('pokemonLocalDataSource', () {
    test('should be able to retrieve saved favorited pokemon', () async {
      favorites = null;
      final pokemon = Pokemon(id: 1, name: 'fave');

      await localDatasource.addFavoritePokemon(pokemon);

      final savedPokemons = await localDatasource.getFavoritePokemons();

      expect(pokemon, savedPokemons.pokemons!.first);
    });
  });

  test('should no longer return deleted favourite', () async {
    favorites = '[{"id":1,"name":"fave"}]';

    await localDatasource.removeFavoritePokemon(Pokemon(id: 1, name: 'fave'));

    final savedPokemons = await localDatasource.getFavoritePokemons();

    expect(savedPokemons.pokemons!.length, 0);
  });

  test('should return latest data after favorite is updated', () async {
    favorites = '[{"id":1,"name":"fave"}]';

    await localDatasource
        .updateFavoritePokemon(Pokemon(id: 1, name: 'updated_fave'));

    final savedPokemons = await localDatasource.getFavoritePokemons();

    expect(savedPokemons.pokemons!.first.name, 'updated_fave');
  });

  test('isFavoritePokemon should be true if pokemon is in favorites', () async {
    favorites = '[{"id":1,"name":"fave"}]';

    final isFave =
        await localDatasource.isFavoritePokemon(Pokemon(id: 1, name: 'fave'));

    expect(isFave, isTrue);
  });

  test('isFavoritePokemon should be false if pokemon is not in favorites',
      () async {
    favorites = null;

    final isFave =
        await localDatasource.isFavoritePokemon(Pokemon(id: 1, name: 'fave'));

    expect(isFave, isFalse);
  });
}
