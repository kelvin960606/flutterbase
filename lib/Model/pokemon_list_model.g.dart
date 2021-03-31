// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) {
  return PokemonListModel(
    json['count'] as int,
    json['next'] as String,
    json['previous'] as String,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Results.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonListModelToJson(PokemonListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
