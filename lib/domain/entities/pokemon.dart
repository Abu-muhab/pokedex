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
      String? imageUrl,
      int? height,
      int? weight}) = _Pokemon;

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

@freezed
class Stat with _$Stat {
  factory Stat(
      {int? effort,
      @JsonKey(name: 'base_stat') int? baseStat,
      String? name}) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) =>
      _$StatFromJson(json).copyWith(
        name: json['stat']['name'],
      );
}
