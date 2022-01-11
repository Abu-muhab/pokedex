import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/presentation/cubit/favorite_pokemon_cubit.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/network/pokemon_rest_client.dart';
import 'data/repositories/pokemon_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //cubits
  sl.registerFactory(() => PokemonCubit(pokemonRepository: sl()));
  sl.registerFactory(() => FavoritePokemonCubit(pokemonRepository: sl()));

  //repositories
  sl.registerLazySingleton<PokemonRepository>(() => PokemonRepositoryImpl(
      pokemonRemoteDataSource: sl(), pokemonLocalDatasource: sl()));

  //data sources
  sl.registerLazySingleton<PokemonRemoteDataSource>(
      () => PokemonRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<PokemonLocalDatasource>(
      () => PokemonLocalDatasourceImpl(sl()));

  //network
  sl.registerLazySingleton<PokemonRestClient>(() => PokemonRestClient(sl()));

  //external
  sl.registerLazySingleton(() => Dio());
  SharedPreferences preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => preferences);
}
