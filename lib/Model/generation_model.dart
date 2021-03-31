import 'package:json_annotation/json_annotation.dart';

part 'generation_model.g.dart';

@JsonSerializable()
class GenerationModel extends Object {
  @JsonKey(name: 'abilities')
  List<dynamic> abilities;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'main_region')
  Main_region mainRegion;

  @JsonKey(name: 'moves')
  List<Moves> moves;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'names')
  List<Names> names;

  @JsonKey(name: 'pokemon_species')
  List<Pokemon_species> pokemonSpecies;

  @JsonKey(name: 'types')
  List<Types> types;

  @JsonKey(name: 'version_groups')
  List<Version_groups> versionGroups;

  GenerationModel(
    this.abilities,
    this.id,
    this.mainRegion,
    this.moves,
    this.name,
    this.names,
    this.pokemonSpecies,
    this.types,
    this.versionGroups,
  );

  factory GenerationModel.fromJson(Map<String, dynamic> srcJson) =>
      _$GenerationModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GenerationModelToJson(this);
}

@JsonSerializable()
class Main_region extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Main_region(
    this.name,
    this.url,
  );

  factory Main_region.fromJson(Map<String, dynamic> srcJson) =>
      _$Main_regionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Main_regionToJson(this);
}

@JsonSerializable()
class Moves extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Moves(
    this.name,
    this.url,
  );

  factory Moves.fromJson(Map<String, dynamic> srcJson) =>
      _$MovesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovesToJson(this);
}

@JsonSerializable()
class Names extends Object {
  @JsonKey(name: 'language')
  Language language;

  @JsonKey(name: 'name')
  String name;

  Names(
    this.language,
    this.name,
  );

  factory Names.fromJson(Map<String, dynamic> srcJson) =>
      _$NamesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NamesToJson(this);
}

@JsonSerializable()
class Language extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Language(
    this.name,
    this.url,
  );

  factory Language.fromJson(Map<String, dynamic> srcJson) =>
      _$LanguageFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

@JsonSerializable()
class Pokemon_species extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Pokemon_species(
    this.name,
    this.url,
  );

  factory Pokemon_species.fromJson(Map<String, dynamic> srcJson) =>
      _$Pokemon_speciesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Pokemon_speciesToJson(this);
}

@JsonSerializable()
class Types extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Types(
    this.name,
    this.url,
  );

  factory Types.fromJson(Map<String, dynamic> srcJson) =>
      _$TypesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TypesToJson(this);
}

@JsonSerializable()
class Version_groups extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Version_groups(
    this.name,
    this.url,
  );

  factory Version_groups.fromJson(Map<String, dynamic> srcJson) =>
      _$Version_groupsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Version_groupsToJson(this);
}
