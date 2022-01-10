import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/widgets/pokemon_card.dart';
import 'package:bloc/bloc.dart';

import '../../injection_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<PokemonCubit>().loadPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
              child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<PokemonCubit>().loadPokemons();
                      },
                      child: SvgPicture.asset('images/pokemon.svg'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Pokedex',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TabBar(tabs: [
                  Tab(
                    child: Text(
                      'All Pokemons',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Favorite Pokemons',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                Expanded(
                    child: Container(
                  color: Colors.grey[100],
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: BlocConsumer<PokemonCubit, PokemonState>(
                      listener: (context, state) {
                        print(state);
                      },
                      builder: (context, state) {
                        if (state is Loading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state is Loaded) {
                          return GridView.builder(
                            itemCount: state.pokemons.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.6,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, count) {
                              return PokemonCard(
                                  pokemon: state.pokemons[count]);
                            },
                          );
                        }

                        return Container();
                      },
                    ),
                  ),
                ))
              ],
            ),
          )),
        ));
  }
}
