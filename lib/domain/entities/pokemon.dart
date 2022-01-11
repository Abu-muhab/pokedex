import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon(
      {String? name,
      String? url,
      int? id,
      List<PokemonType>? types,
      String? imageUrl}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json).copyWith(
          imageUrl: json['sprites']?['other']?['official-artwork']
              ?['front_default']);
}

@freezed
class PokemonType with _$PokemonType {
  factory PokemonType({String? name, String? url}) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json['type']);
}
