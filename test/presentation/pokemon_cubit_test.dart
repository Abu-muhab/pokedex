import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';

import 'pokemon_cubit_test.mocks.dart';

@GenerateMocks([PokemonRepository])
void main() {
  late MockPokemonRepository pokemonRepository;
  late PokemonCubit pokemonCubit;
  setUp(() {
    pokemonRepository = MockPokemonRepository();
    pokemonCubit = PokemonCubit(pokemonRepository: pokemonRepository);
    when(pokemonRepository.getPokemons()).thenAnswer((_) => Future.value([]));
  });
  group('pokemonCubit', () {
    test(
        'loadPokemons should emit [PokemonLoadingState,PokemonErrorState] states when data is fetched succesfully',
        () async {
      when(pokemonRepository.getPokemons()).thenThrow(Exception());

      final expectedStates = [
        const PokemonLoadingState(),
        const PokemonErrorState("Something went wrong")
      ];

      expectLater(pokemonCubit.stream, emitsInOrder(expectedStates));

      pokemonCubit.loadPokemons();
    });

    test(
        'loadPokemons should emit [PokemonLoadingState,PokemonLoadedState] states when data is fetched succesfully',
        () async {
      final expectedStates = [
        const PokemonLoadingState(),
        const PokemonLoadedState([])
      ];

      expectLater(pokemonCubit.stream, emitsInOrder(expectedStates));

      pokemonCubit.loadPokemons();
    });

    test(
        'loadPokemons should emit [PokemonLoadingState,PokemonLoadedState] states when more data is fetched succesfully',
        () async {
      final expectedStates = [
        const PokemonLoadingMoreState([]),
        const PokemonLoadedState([])
      ];

      expectLater(pokemonCubit.stream, emitsInOrder(expectedStates));

      pokemonCubit.loadPokemons(loadedPokemons: []);
    });
  });
}
