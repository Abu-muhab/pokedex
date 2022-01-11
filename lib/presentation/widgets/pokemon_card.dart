import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/core/app_colors.dart';
import 'package:pokedex/presentation/util.dart';

class PokemonCard extends StatefulWidget {
  final Pokemon? pokemon;
  final Function? onTap;

  const PokemonCard({Key? key, this.pokemon, this.onTap}) : super(key: key);

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  Color? cardColor;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      cardColor =
          await computeDominatImageColor(widget.pokemon?.imageUrl ?? '');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return InkWell(
        onTap: () => widget.onTap?.call(),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              ))
            ])),
      );
    });
  }
}
