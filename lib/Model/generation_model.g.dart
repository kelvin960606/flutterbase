// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerationModel _$GenerationModelFromJson(Map<String, dynamic> json) {
  return GenerationModel(
    json['abilities'] as List,
    json['id'] as int,
    json['main_region'] == null
        ? null
        : Main_region.fromJson(json['main_region'] as Map<String, dynamic>),
    (json['moves'] as List)
        ?.map(
            (e) => e == null ? null : Moves.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    (json['names'] as List)
        ?.map(
            (e) => e == null ? null : Names.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['pokemon_species'] as List)
        ?.map((e) => e == null
            ? null
            : Pokemon_species.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['types'] as List)
        ?.map(
            (e) => e == null ? null : Types.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['version_groups'] as List)
        ?.map((e) => e == null
            ? null
            : Version_groups.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GenerationModelToJson(GenerationModel instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'id': instance.id,
      'main_region': instance.mainRegion,
      'moves': instance.moves,
      'name': instance.name,
      'names': instance.names,
      'pokemon_species': instance.pokemonSpecies,
      'types': instance.types,
      'version_groups': instance.versionGroups,
    };

Main_region _$Main_regionFromJson(Map<String, dynamic> json) {
  return Main_region(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$Main_regionToJson(Main_region instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Moves _$MovesFromJson(Map<String, dynamic> json) {
  return Moves(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Names _$NamesFromJson(Map<String, dynamic> json) {
  return Names(
    json['language'] == null
        ? null
        : Language.fromJson(json['language'] as Map<String, dynamic>),
    json['name'] as String,
  );
}

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'language': instance.language,
      'name': instance.name,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return Language(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Pokemon_species _$Pokemon_speciesFromJson(Map<String, dynamic> json) {
  return Pokemon_species(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$Pokemon_speciesToJson(Pokemon_species instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Types _$TypesFromJson(Map<String, dynamic> json) {
  return Types(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Version_groups _$Version_groupsFromJson(Map<String, dynamic> json) {
  return Version_groups(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$Version_groupsToJson(Version_groups instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
