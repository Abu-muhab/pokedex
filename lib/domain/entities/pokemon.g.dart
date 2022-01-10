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
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'id': instance.id,
      'types': instance.types,
      'imageUrl': instance.imageUrl,
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
