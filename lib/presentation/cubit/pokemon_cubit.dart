import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';

part 'pokemon_state.dart';
part 'pokemon_cubit.freezed.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final PokemonRepository pokemonRepository;
  PokemonCubit({required this.pokemonRepository})
      : super(const PokemonState.initial());

  Future<void> loadPokemons({List<Pokemon>? loadedPokemons}) async {
    if (loadedPokemons == null) {
      emit(const PokemonState.loading());
    } else {
      emit(PokemonState.loadingMore(loadedPokemons));
    }

    try {
      final pokemons = await pokemonRepository.getPokemons(
          offset: loadedPokemons?.length ?? 0);
      emit(PokemonState.loaded([...?loadedPokemons, ...pokemons]));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }
}
