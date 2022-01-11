import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/core/app_colors.dart';

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

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _pokemon = widget.pokemon;

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
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              backgroundColor:
                  dominantColor?.withOpacity(0.5) ?? Colors.grey[200]!,
              flexibleSpace: FlexibleSpaceBar(
                title: Opacity(
                  opacity: titleOpacity,
                  child: Text(
                    _pokemon?.name?.capitalizeFirstLetter() ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
        body: Container(),
      ),
    );
  }
}
