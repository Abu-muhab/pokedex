import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/presentation/cubit/favorite_pokemon_cubit.dart';

import 'favorite_pokemon_cubit_test.mocks.dart';

@GenerateMocks([PokemonRepository])
void main() {
  late MockPokemonRepository pokemonRepository;
  late FavoritePokemonCubit favouritePokemonCubit;
  final expectedSuccessStates = [
    const FavoritePokemonLoadingState(),
    const FavoritePokemonLoadedState(pokemon: [], isCachedData: true)
  ];

  setUp(() {
    pokemonRepository = MockPokemonRepository();
    favouritePokemonCubit =
        FavoritePokemonCubit(pokemonRepository: pokemonRepository);
    when(pokemonRepository.getFavoritePokemons())
        .thenAnswer((_) => Future.value(GetFavoritePokemonResponse([], true)));
    when(pokemonRepository.removeFavoritePokemon(any))
        .thenAnswer((_) => Future.value());
    when(pokemonRepository.addFavoritePokemon(any))
        .thenAnswer((_) => Future.value());
  });
  group('favouritePokemonCubit', () {
    test(
        'loadFavorites should emit [FavoritePokemonLoadingState,FavoritePokemonLoadingState] states when data is fetched succesfully',
        () async {
      expectLater(
          favouritePokemonCubit.stream, emitsInOrder(expectedSuccessStates));

      favouritePokemonCubit.loadFavorites();
    });

    test(
        'addToFavorites should emit [FavoritePokemonLoadingState,FavoritePokemonLoadingState] states when pokemon is added succesfully',
        () async {
      expectLater(
          favouritePokemonCubit.stream, emitsInOrder(expectedSuccessStates));

      favouritePokemonCubit.addToFavorites(Pokemon(id: 1, name: 'fave'));
    });

    test(
        'removeFromFavorites should emit [FavoritePokemonLoadingState,FavoritePokemonLoadingState] states when pokemon is removed succesfully',
        () async {
      expectLater(
          favouritePokemonCubit.stream, emitsInOrder(expectedSuccessStates));

      favouritePokemonCubit.removeFromFavorites(Pokemon(id: 1, name: 'fave'));
    });
  });
}
