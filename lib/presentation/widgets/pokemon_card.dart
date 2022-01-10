import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon? pokemon;
  const PokemonCard({Key? key, this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(pokemon);
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          color: Colors.white,
          child: Column(children: [
            Container(
              color: Colors.grey[200],
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              child: CachedNetworkImage(
                imageUrl: pokemon?.imageUrl ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [Text("fdsghajkl;")],
              ),
            ))
          ]));
    });
  }
}
