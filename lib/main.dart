import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/cubit/favorite_pokemon_cubit.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/pages/home_page.dart';
import 'package:pokedex/presentation/pages/pokemon_details.dart';

import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonCubit>(
          create: (BuildContext context) => sl<PokemonCubit>(),
        ),
        BlocProvider<FavoritePokemonCubit>(
          create: (BuildContext context) => sl<FavoritePokemonCubit>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex Demo',
        routes: {
          '/': (context) => const HomePage(),
          '/details': (context) => const PokemonDetailsPage()
        },
        initialRoute: '/home',
      ),
    );
  }
}
