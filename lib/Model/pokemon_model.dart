import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel extends Object {
  @JsonKey(name: 'abilities')
  List<Abilities> abilities;

  @JsonKey(name: 'base_experience')
  int baseExperience;

  @JsonKey(name: 'forms')
  List<Forms> forms;

  @JsonKey(name: 'game_indices')
  List<GameIndices> gameIndices;

  @JsonKey(name: 'height')
  int height;

  @JsonKey(name: 'held_items')
  List<dynamic> heldItems;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'is_default')
  bool isDefault;

  @JsonKey(name: 'location_area_encounters')
  String locationAreaEncounters;

  @JsonKey(name: 'moves')
  List<Moves> moves;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'past_types')
  List<dynamic> pastTypes;

  @JsonKey(name: 'species')
  Species species;

  @JsonKey(name: 'sprites')
  Sprites sprites;

  @JsonKey(name: 'stats')
  List<Stats> stats;

  @JsonKey(name: 'types')
  List<Types> types;

  @JsonKey(name: 'weight')
  int weight;

  PokemonModel(
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  );

  factory PokemonModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PokemonModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);
}

@JsonSerializable()
class Abilities extends Object {
  @JsonKey(name: 'ability')
  Ability ability;

  @JsonKey(name: 'is_hidden')
  bool isHidden;

  @JsonKey(name: 'slot')
  int slot;

  Abilities(
    this.ability,
    this.isHidden,
    this.slot,
  );

  factory Abilities.fromJson(Map<String, dynamic> srcJson) =>
      _$AbilitiesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AbilitiesToJson(this);
}

@JsonSerializable()
class Ability extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Ability(
    this.name,
    this.url,
  );

  factory Ability.fromJson(Map<String, dynamic> srcJson) =>
      _$AbilityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable()
class Forms extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Forms(
    this.name,
    this.url,
  );

  factory Forms.fromJson(Map<String, dynamic> srcJson) =>
      _$FormsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FormsToJson(this);
}

@JsonSerializable()
class GameIndices extends Object {
  @JsonKey(name: 'game_index')
  int gameIndex;

  @JsonKey(name: 'version')
  Version version;

  GameIndices(
    this.gameIndex,
    this.version,
  );

  factory GameIndices.fromJson(Map<String, dynamic> srcJson) =>
      _$GameIndicesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GameIndicesToJson(this);
}

@JsonSerializable()
class Version extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Version(
    this.name,
    this.url,
  );

  factory Version.fromJson(Map<String, dynamic> srcJson) =>
      _$VersionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VersionToJson(this);
}

@JsonSerializable()
class Moves extends Object {
  @JsonKey(name: 'move')
  Move move;

  @JsonKey(name: 'versionGroupDetails')
  List<VersionGroupDetails> versionGroupDetails;

  Moves(
    this.move,
    this.versionGroupDetails,
  );

  factory Moves.fromJson(Map<String, dynamic> srcJson) =>
      _$MovesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovesToJson(this);
}

@JsonSerializable()
class Move extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Move(
    this.name,
    this.url,
  );

  factory Move.fromJson(Map<String, dynamic> srcJson) =>
      _$MoveFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MoveToJson(this);
}

@JsonSerializable()
class VersionGroupDetails extends Object {
  @JsonKey(name: 'level_learned_at')
  int levelLearnedAt;

  @JsonKey(name: 'MoveLearnMethod')
  MoveLearnMethod moveLearnMethod;

  @JsonKey(name: 'versionGroup')
  VersionGroup versionGroup;

  VersionGroupDetails(
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  );

  factory VersionGroupDetails.fromJson(Map<String, dynamic> srcJson) =>
      _$VersionGroupDetailsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VersionGroupDetailsToJson(this);
}

@JsonSerializable()
class MoveLearnMethod extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  MoveLearnMethod(
    this.name,
    this.url,
  );

  factory MoveLearnMethod.fromJson(Map<String, dynamic> srcJson) =>
      _$MoveLearnMethodFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MoveLearnMethodToJson(this);
}

@JsonSerializable()
class VersionGroup extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  VersionGroup(
    this.name,
    this.url,
  );

  factory VersionGroup.fromJson(Map<String, dynamic> srcJson) =>
      _$VersionGroupFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VersionGroupToJson(this);
}

@JsonSerializable()
class Species extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Species(
    this.name,
    this.url,
  );

  factory Species.fromJson(Map<String, dynamic> srcJson) =>
      _$SpeciesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}

@JsonSerializable()
class Sprites extends Object {
  @JsonKey(name: 'back_default')
  String backDefault;

  @JsonKey(name: 'back_shiny')
  String backShiny;

  @JsonKey(name: 'front_default')
  String frontDefault;

  @JsonKey(name: 'front_shiny')
  String frontShiny;

  @JsonKey(name: 'other')
  Other other;

  Sprites(
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.other,
  );

  factory Sprites.fromJson(Map<String, dynamic> srcJson) =>
      _$SpritesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable()
class Other extends Object {
  @JsonKey(name: 'DreamWorld')
  DreamWorld dreamWorld;

  @JsonKey(name: 'official-artwork')
  OfficialArtwork officialArtwork;

  Other(
    this.dreamWorld,
    this.officialArtwork,
  );

  factory Other.fromJson(Map<String, dynamic> srcJson) =>
      _$OtherFromJson(srcJson);

  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable()
class DreamWorld extends Object {
  @JsonKey(name: 'front_default')
  String frontDefault;

  DreamWorld(
    this.frontDefault,
  );

  factory DreamWorld.fromJson(Map<String, dynamic> srcJson) =>
      _$DreamWorldFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DreamWorldToJson(this);
}

@JsonSerializable()
class OfficialArtwork extends Object {
  @JsonKey(name: 'front_default')
  String frontDefault;

  OfficialArtwork(
    this.frontDefault,
  );

  factory OfficialArtwork.fromJson(Map<String, dynamic> srcJson) =>
      _$OfficialArtworkFromJson(srcJson);

  Map<String, dynamic> toJson() => _$OfficialArtworkToJson(this);
}

@JsonSerializable()
class Icons extends Object {
  @JsonKey(name: 'front_default')
  String frontDefault;

  Icons(
    this.frontDefault,
  );

  factory Icons.fromJson(Map<String, dynamic> srcJson) =>
      _$IconsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$IconsToJson(this);
}

@JsonSerializable()
class Stats extends Object {
  @JsonKey(name: 'base_stat')
  int baseStat;

  @JsonKey(name: 'effort')
  int effort;

  @JsonKey(name: 'stat')
  Stat stat;

  Stats(
    this.baseStat,
    this.effort,
    this.stat,
  );

  factory Stats.fromJson(Map<String, dynamic> srcJson) =>
      _$StatsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class Stat extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Stat(
    this.name,
    this.url,
  );

  factory Stat.fromJson(Map<String, dynamic> srcJson) =>
      _$StatFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatToJson(this);
}

@JsonSerializable()
class Types extends Object {
  @JsonKey(name: 'slot')
  int slot;

  @JsonKey(name: 'type')
  Type type;

  Types(
    this.slot,
    this.type,
  );

  factory Types.fromJson(Map<String, dynamic> srcJson) =>
      _$TypesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TypesToJson(this);
}

@JsonSerializable()
class Type extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Type(
    this.name,
    this.url,
  );

  factory Type.fromJson(Map<String, dynamic> srcJson) =>
      _$TypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}
