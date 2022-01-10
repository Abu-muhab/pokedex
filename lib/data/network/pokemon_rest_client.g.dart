// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_rest_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPokemonsResponse _$$_GetPokemonsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPokemonsResponse(
      count: json['count'] as int,
      next: json['next'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetPokemonsResponseToJson(
        _$_GetPokemonsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PokemonRestClient implements PokemonRestClient {
  _PokemonRestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://pokeapi.co/api/v2/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetPokemonsResponse> getPokemons({offset = 0, limit = 20}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPokemonsResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'pokemon',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetPokemonsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Pokemon> getPokemon(nameOrId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Pokemon>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'pokemon/${nameOrId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Pokemon.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
