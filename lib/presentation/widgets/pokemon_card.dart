import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/core/app_colors.dart';

class PokemonCard extends StatefulWidget {
  final Pokemon? pokemon;

  const PokemonCard({Key? key, this.pokemon}) : super(key: key);

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  Color? cardColor;

  Future<void> computeDominatImageColor() async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      CachedNetworkImageProvider(widget.pokemon?.imageUrl ?? ''),
    );
    cardColor = paletteGenerator.dominantColor?.color;
  }

  @override
  void initState() {
    super.initState();
    computeDominatImageColor();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          color: Colors.white,
          child: Column(children: [
            Container(
              color: cardColor ?? Colors.grey[200],
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.6,
              child: CachedNetworkImage(
                imageUrl: widget.pokemon?.imageUrl ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "#${widget.pokemon?.id?.toString().padLeft(3, '0') ?? ''}",
                        style: const TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      Text(widget.pokemon?.name ?? '',
                          style: const TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                    ],
                  ),
                  Text(
                      widget.pokemon?.types?.map((e) => e.name).join(', ') ??
                          '',
                      style: const TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ],
              ),
            ))
          ]));
    });
  }
}
