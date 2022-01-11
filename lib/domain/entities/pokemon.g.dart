// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      name: json['name'] as String?,
      url: json['url'] as String?,
      id: json['id'] as int?,
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'id': instance.id,
      'types': instance.types,
      'imageUrl': instance.imageUrl,
      'height': instance.height,
      'weight': instance.weight,
    };

_$_PokemonType _$$_PokemonTypeFromJson(Map<String, dynamic> json) =>
    _$_PokemonType(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonTypeToJson(_$_PokemonType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_Stat _$$_StatFromJson(Map<String, dynamic> json) => _$_Stat(
      effort: json['effort'] as int?,
      baseStat: json['base_stat'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StatToJson(_$_Stat instance) => <String, dynamic>{
      'effort': instance.effort,
      'base_stat': instance.baseStat,
      'name': instance.name,
    };
