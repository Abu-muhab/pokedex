import 'package:flutter/material.dart';
import 'package:pokedex/presentation/core/app_colors.dart';
import 'package:pokedex/presentation/util.dart';

class PokemonStat extends StatelessWidget {
  final String? title;
  final int? value;
  const PokemonStat({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title?.capitalizeFirstLetter() ?? '',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.grey),
            ),
            const SizedBox(width: 8),
            Text(
              value?.toString() ?? '0',
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.black),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        LinearProgressIndicator(
          value: (value?.toDouble() ?? 0.0) / 100,
          backgroundColor: Colors.grey[100],
          color: getColor((value?.toDouble() ?? 0.0) / 100),
        )
      ],
    );
  }
}

Color getColor(double percentage) {
  if (percentage < 0.25) {
    return Colors.red;
  } else if (percentage < 0.5) {
    return Colors.orange;
  } else if (percentage < 0.75) {
    return Colors.yellow;
  } else {
    return Colors.green;
  }
}
