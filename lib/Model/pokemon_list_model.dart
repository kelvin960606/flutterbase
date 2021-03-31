import 'package:json_annotation/json_annotation.dart';

part 'pokemon_list_model.g.dart';

@JsonSerializable()
class PokemonListModel extends Object {
  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'next')
  String next;

  @JsonKey(name: 'previous')
  String previous;

  @JsonKey(name: 'results')
  List<Results> results;

  PokemonListModel(
    this.count,
    this.next,
    this.previous,
    this.results,
  );

  factory PokemonListModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PokemonListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PokemonListModelToJson(this);
}

@JsonSerializable()
class Results extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Results(
    this.name,
    this.url,
  );

  factory Results.fromJson(Map<String, dynamic> srcJson) =>
      _$ResultsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
