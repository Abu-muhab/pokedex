import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/widgets/pokemon_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    //load pokemons
    context.read<PokemonCubit>().loadPokemons();
    _scrollController = ScrollController();

    //setup pagination scroll listener
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        final currentState = context.read<PokemonCubit>().state;
        if (currentState is Loaded) {
          context
              .read<PokemonCubit>()
              .loadPokemons(loadedPokemons: currentState.pokemons);
        }
      }
    });
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
                const SizedBox(
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
                    const SizedBox(width: 20),
                    const Text(
                      'Pokedex',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const TabBar(tabs: [
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
                    padding: const EdgeInsets.all(10),
                    child: BlocConsumer<PokemonCubit, PokemonState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        if (state is Loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is Loaded) {
                          return buildLoadedPokemons(state.pokemons);
                        } else if (state is LoadingMore) {
                          return Column(children: [
                            Expanded(
                                child:
                                    buildLoadedPokemons(state.loadedPokemons)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: CircularProgressIndicator(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ]);
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

  Widget buildLoadedPokemons(List<Pokemon> pokemons) {
    return GridView.builder(
      itemCount: pokemons.length,
      controller: _scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.6,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, count) {
        return PokemonCard(pokemon: pokemons[count]);
      },
    );
  }
}
