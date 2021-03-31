import 'dart:convert';

import 'package:flutterbase/Model/generation_model.dart';
import 'package:flutterbase/Model/pokemon_list_model.dart';
import 'package:flutterbase/Model/pokemon_model.dart';
import 'package:flutterbase/Services/apiService.dart';
import 'package:get/get.dart';

class Gen {
  String name;
  int id;
  List<Pokemon_species> pokemons;

  Gen(this.id, this.name, this.pokemons);
}

class Pokemon {
  int id;
  String name;
  String image;

  Pokemon(this.id, this.name);
}

class PokedexController extends GetxController {
  RxList<Gen> generations = List<Gen>().obs;
  RxList<Pokemon> pokemons = List<Pokemon>().obs;
  ApiService apiService = Get.find();
  String nextUrl = '';
  int limit = 0;
  int currentGen = 1;
  bool loading = false;

  void init() {
    getAllGen();
  }

  void getAllGen() async {
    generations.clear();
    for (var i = 0; i < 8; i++) {
      var response = await apiService.getGenData(i + 1);
      if (response.statusCode == 200) {
        var json = jsonDecode(response.toString());
        GenerationModel generationModel = GenerationModel.fromJson(json);
        var genEngName = generationModel.names
            .singleWhere((element) => element.language.name == 'en');
        if (genEngName != null) {
          generations.add(new Gen(generationModel.id, genEngName.name,
              generationModel.pokemonSpecies));
        }
      }
    }
  }

  void getPokemonByGen(gen) async {
    try {
      loading = true;
      pokemons.clear();
      currentGen = int.parse(gen);
      var offset = [0, 151, 251, 386, 493, 649, 721, 809, 898];
      var response =
          await apiService.getPokemon(20, offset[int.parse(gen) - 1]);
      if (response.statusCode == 200) {
        var json = jsonDecode(response.toString());
        PokemonListModel pokemonListModel = PokemonListModel.fromJson(json);
        nextUrl = pokemonListModel.next;
        pokemonListModel.results.forEach((element) async {
          var id = element.url.split('/')[6];
          Pokemon pokemon = new Pokemon(int.parse(id), element.name);
          var pokemonRes = await apiService.getPokemonDetail(id);
          if (pokemonRes.statusCode == 200) {
            var json = jsonDecode(pokemonRes.toString());
            PokemonModel pokemonModel = PokemonModel.fromJson(json);

            if (pokemonModel?.sprites?.other?.officialArtwork?.frontDefault !=
                null) {
              pokemon.image =
                  pokemonModel.sprites.other.officialArtwork.frontDefault;
            }
          }
          pokemons.add(pokemon);
          pokemons.sort((a, b) => a.id.compareTo(b.id));
        });
      }
      loading = false;
    } catch (e) {
      print(e);
    }
  }

  void getMorePokemon() async {
    var offset = [0, 151, 251, 386, 493, 649, 721, 809, 898];
    var range = offset[currentGen] - offset[currentGen - 1];
    if (nextUrl.isNotEmpty) {
      loading = true;
      var response = await apiService.getMorePokemon(nextUrl);
      if (response.statusCode == 200) {
        var json = jsonDecode(response.toString());
        PokemonListModel pokemonListModel = PokemonListModel.fromJson(json);
        nextUrl = pokemonListModel.next;
        pokemonListModel.results.forEach((element) async {
          var id = element.url.split('/')[6];
          Pokemon pokemon = new Pokemon(int.parse(id), element.name);
          if (pokemons.length < range) {
            var pokemonRes = await apiService.getPokemonDetail(id);
            if (pokemonRes.statusCode == 200) {
              var json = jsonDecode(pokemonRes.toString());
              PokemonModel pokemonModel = PokemonModel.fromJson(json);
              if (pokemonModel?.sprites?.other?.officialArtwork?.frontDefault !=
                  null) {
                pokemon.image =
                    pokemonModel.sprites.other.officialArtwork.frontDefault;
              }
            }
            pokemons.add(pokemon);
            pokemons.sort((a, b) => a.id.compareTo(b.id));
          }
        });
      }
      loading = false;
    }
  }
}
