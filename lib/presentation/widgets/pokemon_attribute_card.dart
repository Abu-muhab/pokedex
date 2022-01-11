import 'package:flutter/material.dart';
import 'package:pokedex/presentation/core/app_colors.dart';

class PokemonAttributeCard extends StatelessWidget {
  final String? title;
  final String? value;
  const PokemonAttributeCard({Key? key, this.value, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title ?? '',
        style: TextStyle(
            fontWeight: FontWeight.w500, color: AppColors.grey, fontSize: 12),
      ),
      SizedBox(height: 10),
      Text(
        value ?? '',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
    ]);
  }
}
