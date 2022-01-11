import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PokemonLocalDatasource extends PokemonRepository {}

class PokemonLocalDatasourceImpl extends PokemonLocalDatasource {
  final SharedPreferences sharedPreferences;
  PokemonLocalDatasourceImpl(this.sharedPreferences);
  @override
  Future<void> addFavoritePokemon(Pokemon pokemon) async {
    final favoritesJson = sharedPreferences.getString('favourites');
    if (favoritesJson == null) {
      final json = jsonEncode([pokemon.toJson()]);
      await sharedPreferences.setString('favourites', json);
    } else {
      final json = jsonEncode([...jsonDecode(favoritesJson), pokemon.toJson()]);
      await sharedPreferences.setString('favourites', json);
    }
  }

  @override
  Future<bool> isFavoritePokemon(Pokemon pokemon) async {
    final favoritesJson = sharedPreferences.getString('favourites');
    if (favoritesJson == null) {
      return false;
    }
    final favorites = jsonDecode(favoritesJson);
    final favorite =
        favorites.firstWhere((f) => f['id'] == pokemon.id, orElse: () => null);
    return favorite != null;
  }

  @override
  Future<void> updateFavoritePokemon(Pokemon pokemon) async {
    final favoritesJson = sharedPreferences.getString('favourites');
    if (favoritesJson != null) {
      final favorites = jsonDecode(favoritesJson);
      final index = favorites.indexWhere((p) => p['id'] == pokemon.id);
      favorites[index] = pokemon.toJson();
      final json = jsonEncode(favorites);
      sharedPreferences.setString('favourites', json);
    }
  }

  @override
  Future<void> removeFavoritePokemon(Pokemon pokemon) async {
    final favoritesJson = sharedPreferences.getString('favourites');
    if (favoritesJson != null) {
      final favorites = jsonDecode(favoritesJson);
      final index =
          favorites.indexWhere((element) => element['id'] == pokemon.id);
      favorites.removeAt(index);
      final json = jsonEncode(favorites);
      sharedPreferences.setString('favourites', json);
    }
  }

  @override
  Future<GetFavoritePokemonResponse> getFavoritePokemons() async {
    final favoritesJson = sharedPreferences.getString('favourites');
    if (favoritesJson == null) {
      return GetFavoritePokemonResponse([], true);
    }
    final json = jsonDecode(favoritesJson);
    final List<Pokemon> pokemons =
        json.map((pokemon) => Pokemon.fromJson(pokemon)).toList();
    return GetFavoritePokemonResponse(pokemons, true);
  }

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20}) {
    throw UnimplementedError();
  }

  @override
  Future<Pokemon> get(nameOrId) {
    throw UnimplementedError();
  }
}
