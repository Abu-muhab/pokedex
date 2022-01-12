import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/core/app_colors.dart';
import 'package:pokedex/presentation/cubit/favorite_pokemon_cubit.dart';
import 'package:pokedex/presentation/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/widgets/pokemon_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    //load pokemons
    context.read<PokemonCubit>().loadPokemons();

    //setup pagination scroll listener
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        final currentState = context.read<PokemonCubit>().state;
        if (currentState is PokemonLoadedState) {
          context
              .read<PokemonCubit>()
              .loadPokemons(loadedPokemons: currentState.pokemons);
        }
      }
    });

    //fetch favorites
    context.read<FavoritePokemonCubit>().loadFavorites(invalidateCache: true);
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
                    SvgPicture.asset('images/pokemon.svg'),
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
                TabBar(indicatorColor: AppColors.primaryColor, tabs: [
                  const Tab(
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
                    child: BlocConsumer<FavoritePokemonCubit,
                            FavoritePokemonState>(
                        builder: (context, state) {
                          return Row(
                            children: [
                              const Text(
                                'Favorite Pokemons',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              if (state is FavoritePokemonLoadedState)
                                const SizedBox(width: 10),
                              if (state is FavoritePokemonLoadedState &&
                                  state.pokemon!.isNotEmpty)
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightBlue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      state.pokemon!.length.toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                        listener: (context, state) {}),
                  ),
                ]),
                Expanded(
                    child: TabBarView(children: [
                  Container(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: BlocConsumer<PokemonCubit, PokemonState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state is PokemonLoadingState ||
                              state is PokemonInitialState) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is PokemonLoadedState ||
                              state is PokemonLoadingMoreState) {
                            return Column(children: [
                              Expanded(
                                  child: buildLoadedPokemons(
                                      pokemons: (state as dynamic).pokemons,
                                      scrollController: _scrollController,
                                      onRefresh: () async {
                                        await context
                                            .read<PokemonCubit>()
                                            .loadPokemons();
                                      })),
                              if (state is PokemonLoadingMoreState)
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                            ]);
                          }

                          //error state
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                (state as PokemonErrorState).message,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<PokemonCubit>().loadPokemons();
                                },
                                child: const Text('Retry'),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: BlocConsumer<FavoritePokemonCubit,
                          FavoritePokemonState>(
                        listener: (context, state) {
                          if (state is FavoritePokemonLoadedState &&
                              state.isCachedData == true &&
                              ModalRoute.of(context)!.isCurrent) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('No internet connection'),
                              duration: Duration(seconds: 2),
                            ));
                          }
                        },
                        builder: (context, state) {
                          if (state is FavoritePokemonLoadingState ||
                              state is FavoritePokemonInitialState) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is FavoritePokemonLoadedState) {
                            if (state.pokemon!.isEmpty) {
                              return const Center(
                                child: Text('No favorites'),
                              );
                            }

                            return Column(children: [
                              Expanded(
                                  child: buildLoadedPokemons(
                                pokemons: state.pokemon!,
                                onRefresh: () async {
                                  await context
                                      .read<FavoritePokemonCubit>()
                                      .loadFavorites(invalidateCache: true);
                                },
                              )),
                              if (state is PokemonLoadingMoreState)
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                            ]);
                          }

                          return Container();
                        },
                      ),
                    ),
                  )
                ]))
              ],
            ),
          )),
        ));
  }

  Widget buildLoadedPokemons(
      {required List<Pokemon> pokemons,
      ScrollController? scrollController,
      AsyncCallback? onRefresh}) {
    return OrientationBuilder(builder: (context, orientation) {
      return RefreshIndicator(
          child: GridView.builder(
            itemCount: pokemons.length,
            controller: scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.6,
                crossAxisCount: getValueForScreenType<int>(
                  context: context,
                  mobile: orientation == Orientation.portrait ? 3 : 4,
                  tablet: 5,
                  desktop: 7,
                ),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemBuilder: (context, count) {
              return PokemonCard(
                pokemon: pokemons[count],
                onTap: () {
                  Navigator.pushNamed(context, '/details',
                      arguments: pokemons[count]);
                },
              );
            },
          ),
          onRefresh: () async {
            await onRefresh?.call();
          });
    });
  }
}
