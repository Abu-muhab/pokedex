import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/injection_container.dart';
import 'package:pokedex/presentation/core/app_colors.dart';
import 'package:pokedex/presentation/cubit/favorite_pokemon_cubit.dart';
import 'package:pokedex/presentation/widgets/pokemon_attribute_card.dart';
import 'package:pokedex/presentation/widgets/pokemon_stat.dart';

import '../util.dart';

class PokemonDetailsPage extends StatefulWidget {
  final Pokemon? pokemon;
  const PokemonDetailsPage({Key? key, this.pokemon}) : super(key: key);

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  Pokemon? _pokemon;
  Color? dominantColor;
  double titleOpacity = 0;
  bool? isFavorite;
  FavoritePokemonCubit? cubit;

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _pokemon = widget.pokemon;

    cubit = context.read<FavoritePokemonCubit>();

    //scroll lister to change the opacity of sliverappbar title upon expansion
    _scrollController.addListener(() {
      final calculatedOpacity = (_scrollController.position.pixels >= 250
              ? 250
              : _scrollController.position.pixels) /
          250;
      titleOpacity = calculatedOpacity < 0 ? 0 : calculatedOpacity;
      setState(() {});
    });

    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      //get pokemon from route if not provided
      _pokemon ??= ModalRoute.of(context)?.settings.arguments as Pokemon;

      //compute dominant color
      dominantColor = await computeDominatImageColor(_pokemon?.imageUrl ?? '');

      //check if pokemon is favorite
      checkFavorite();
    });
  }

  Future<void> checkFavorite() async {
    isFavorite = await cubit!.isFavorite(_pokemon!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          BlocConsumer<FavoritePokemonCubit, FavoritePokemonState>(
              builder: (context, state) {
        return SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () async {
              if (state is FavoritePokemonLoadingState) {
                return;
              }

              try {
                if (isFavorite == false) {
                  await cubit!.addToFavorites(_pokemon!);
                } else if (isFavorite == true) {
                  await cubit!.removeFromFavorites(_pokemon!);
                }
                // ignore: empty_catches
              } catch (err) {}
            },
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: isFavorite == true
                    ? AppColors.lightBlueAccent
                    : AppColors.lightBlue),
            child: state is FavoritePokemonLoadingState || isFavorite == null
                ? const Center(
                    child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(),
                  ))
                : Padding(
                    child: Text(
                      isFavorite == true
                          ? 'Remove from favorites'
                          : 'Add to favorites',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: isFavorite == true
                              ? AppColors.lightBlue
                              : Colors.white),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 15),
                  ),
          ),
        );
      }, listener: (context, state) async {
        if (state is FavoritePokemonLoadedState) {
          await checkFavorite();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(isFavorite == true
                ? 'Added to favorites'
                : 'Removed from favorites'),
            duration: const Duration(seconds: 2),
          ));
        }

        if (state is FavoritePokemonErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
            duration: const Duration(seconds: 2),
          ));
        }
      }),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 230,
              floating: false,
              pinned: true,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              backgroundColor: dominantColor ?? Colors.grey[200]!,
              flexibleSpace: FlexibleSpaceBar(
                title: Opacity(
                  opacity: titleOpacity,
                  child: Text(
                    _pokemon?.name?.capitalizeFirstLetter() ?? '',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlue),
                  ),
                ),
                centerTitle: false,
                background: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            dominantColor?.withOpacity(0.5) ??
                                Colors.grey[200]!,
                            dominantColor?.withOpacity(0.8) ??
                                Colors.grey[100]!,
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 150,
                          child: CachedNetworkImage(
                            imageUrl: _pokemon?.imageUrl ?? '',
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) => Container(
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: kToolbarHeight * 1.3,
                          ),
                          Text(_pokemon?.name?.capitalizeFirstLetter() ?? '',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkBlue)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              _pokemon?.types?.map((e) => e.name).join(', ') ??
                                  '',
                              style: const TextStyle(
                                  fontSize: 16, color: AppColors.darkBlue)),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                      "#${_pokemon?.id?.toString().padLeft(3, '0') ?? ''}",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: AppColors.darkBlue))))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PokemonAttributeCard(
                  title: 'Height',
                  value: _pokemon?.height?.toString() ?? '',
                ),
                const SizedBox(width: 30),
                PokemonAttributeCard(
                  title: 'Weight',
                  value: _pokemon?.weight?.toString() ?? '',
                ),
                const SizedBox(width: 30),
                PokemonAttributeCard(
                  title: 'BMI',
                  value: _pokemon?.getBMI().toStringAsPrecision(3) ?? '0',
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView(padding: EdgeInsets.zero, children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Base Stats',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkBlue)),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey[200],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ..._pokemon?.stats?.map((e) => Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 20, left: 20, right: 20),
                              child: Column(
                                children: [
                                  PokemonStat(title: e.name, value: e.baseStat),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            )) ??
                        const [],
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          PokemonStat(
                              title: 'Avg. Power',
                              value: _pokemon?.averagePower().toInt()),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                  ])))
        ]),
      ),
    );
  }
}
