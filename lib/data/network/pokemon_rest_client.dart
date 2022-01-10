import 'package:dio/dio.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:retrofit/retrofit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_rest_client.g.dart';
part 'pokemon_rest_client.freezed.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class PokemonRestClient {
  factory PokemonRestClient(Dio dio, {String baseUrl}) = _PokemonRestClient;
  @GET("pokemon")
  Future<GetPokemonsResponse> getPokemons(
      {@Query('offset') int offset = 0, @Query('limit') int limit = 20});

  @GET("pokemon/{nameOrId}")
  Future<Pokemon> getPokemon(@Path("nameOrId") dynamic nameOrId);
}

@freezed
class GetPokemonsResponse with _$GetPokemonsResponse {
  factory GetPokemonsResponse({
    required int count,
    required String next,
    required List<Pokemon> results,
  }) = _GetPokemonsResponse;

  factory GetPokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonsResponseFromJson(json);
}
