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

  Future<void> loadPokemons() async {
    print("loading pokemons");
    emit(const PokemonState.loading());
    final pokemon = await pokemonRepository.getPokemons();
    emit(PokemonState.loaded(pokemon));
    // try {
    //   final pokemon = await pokemonRepository.getPokemons();
    //   emit(PokemonState.loaded(pokemon));
    // } catch (e) {
    //   print(e);
    //   emit(PokemonState.error(e.toString()));
    // }
  }
}
