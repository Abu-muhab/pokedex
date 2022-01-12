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
  });
  group('pokemonCubit', () {
    test('should emit [Loading,Loaded] states when data is fetched succesfully',
        () async {
      when(pokemonRepository.getPokemons()).thenAnswer((_) => Future.value([]));

      final expectedStates = [
        const PokemonLoadingState(),
        const PokemonLoadedState([])
      ];

      expectLater(pokemonCubit.stream, emitsInOrder(expectedStates));

      pokemonCubit.loadPokemons();
    });

    test(
        'should emit [LoadingMore,Loaded] states when more data is fetched succesfully',
        () async {
      when(pokemonRepository.getPokemons()).thenAnswer((_) => Future.value([]));

      final expectedStates = [
        const PokemonLoadingMoreState([]),
        const PokemonLoadedState([])
      ];

      expectLater(pokemonCubit.stream, emitsInOrder(expectedStates));

      pokemonCubit.loadPokemons(loadedPokemons: []);
    });
  });
}
