// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return PokemonModel(
    (json['abilities'] as List)
        ?.map((e) =>
            e == null ? null : Abilities.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['base_experience'] as int,
    (json['forms'] as List)
        ?.map(
            (e) => e == null ? null : Forms.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['game_indices'] as List)
        ?.map((e) =>
            e == null ? null : GameIndices.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['height'] as int,
    json['held_items'] as List,
    json['id'] as int,
    json['is_default'] as bool,
    json['location_area_encounters'] as String,
    (json['moves'] as List)
        ?.map(
            (e) => e == null ? null : Moves.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    json['order'] as int,
    json['past_types'] as List,
    json['species'] == null
        ? null
        : Species.fromJson(json['species'] as Map<String, dynamic>),
    json['sprites'] == null
        ? null
        : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    (json['stats'] as List)
        ?.map(
            (e) => e == null ? null : Stats.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['types'] as List)
        ?.map(
            (e) => e == null ? null : Types.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['weight'] as int,
  );
}

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'past_types': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return Abilities(
    json['ability'] == null
        ? null
        : Ability.fromJson(json['ability'] as Map<String, dynamic>),
    json['is_hidden'] as bool,
    json['slot'] as int,
  );
}

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return Ability(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Forms _$FormsFromJson(Map<String, dynamic> json) {
  return Forms(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$FormsToJson(Forms instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GameIndices _$GameIndicesFromJson(Map<String, dynamic> json) {
  return GameIndices(
    json['game_index'] as int,
    json['version'] == null
        ? null
        : Version.fromJson(json['version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GameIndicesToJson(GameIndices instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version,
    };

Version _$VersionFromJson(Map<String, dynamic> json) {
  return Version(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Moves _$MovesFromJson(Map<String, dynamic> json) {
  return Moves(
    json['move'] == null
        ? null
        : Move.fromJson(json['move'] as Map<String, dynamic>),
    (json['versionGroupDetails'] as List)
        ?.map((e) => e == null
            ? null
            : VersionGroupDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };

Move _$MoveFromJson(Map<String, dynamic> json) {
  return Move(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGroupDetails _$VersionGroupDetailsFromJson(Map<String, dynamic> json) {
  return VersionGroupDetails(
    json['level_learned_at'] as int,
    json['MoveLearnMethod'] == null
        ? null
        : MoveLearnMethod.fromJson(
            json['MoveLearnMethod'] as Map<String, dynamic>),
    json['versionGroup'] == null
        ? null
        : VersionGroup.fromJson(json['versionGroup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VersionGroupDetailsToJson(
        VersionGroupDetails instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'MoveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

MoveLearnMethod _$MoveLearnMethodFromJson(Map<String, dynamic> json) {
  return MoveLearnMethod(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$MoveLearnMethodToJson(MoveLearnMethod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGroup _$VersionGroupFromJson(Map<String, dynamic> json) {
  return VersionGroup(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$VersionGroupToJson(VersionGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return Species(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return Sprites(
    json['back_default'] as String,
    json['back_shiny'] as String,
    json['front_default'] as String,
    json['front_shiny'] as String,
    json['other'] == null
        ? null
        : Other.fromJson(json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'other': instance.other,
    };

Other _$OtherFromJson(Map<String, dynamic> json) {
  return Other(
    json['DreamWorld'] == null
        ? null
        : DreamWorld.fromJson(json['DreamWorld'] as Map<String, dynamic>),
    json['official-artwork'] == null
        ? null
        : OfficialArtwork.fromJson(
            json['official-artwork'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
      'DreamWorld': instance.dreamWorld,
      'official-artwork': instance.officialArtwork,
    };

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) {
  return DreamWorld(
    json['front_default'] as String,
  );
}

Map<String, dynamic> _$DreamWorldToJson(DreamWorld instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return OfficialArtwork(
    json['front_default'] as String,
  );
}

Map<String, dynamic> _$OfficialArtworkToJson(OfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

Icons _$IconsFromJson(Map<String, dynamic> json) {
  return Icons(
    json['front_default'] as String,
  );
}

Map<String, dynamic> _$IconsToJson(Icons instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    json['base_stat'] as int,
    json['effort'] as int,
    json['stat'] == null
        ? null
        : Stat.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

Stat _$StatFromJson(Map<String, dynamic> json) {
  return Stat(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Types _$TypesFromJson(Map<String, dynamic> json) {
  return Types(
    json['slot'] as int,
    json['type'] == null
        ? null
        : Type.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

Type _$TypeFromJson(Map<String, dynamic> json) {
  return Type(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
