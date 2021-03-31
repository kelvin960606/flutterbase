import 'package:flutter/material.dart';
import 'package:flutterbase/Controllers/pokedexController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Pokemons extends StatelessWidget {
  const Pokemons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var offset = [0, 151, 251, 386, 493, 649, 721, 809, 898];
    PokedexController pokedexController = Get.find();
    ScrollController scrollController = new ScrollController();
    scrollController.addListener(() {
      var triggerFetchMoreSize =
          0.6 * scrollController.position.maxScrollExtent;
      var range = offset[pokedexController.currentGen] -
          offset[pokedexController.currentGen - 1];
      if (scrollController.position.pixels > triggerFetchMoreSize &&
          pokedexController.nextUrl.isNotEmpty &&
          pokedexController.pokemons.length < range &&
          !pokedexController.loading) {
        pokedexController.getMorePokemon();
      }
    });
    var id = Get.parameters['id'];
    var name = Get.parameters['name'];
    pokedexController.getPokemonByGen(id);
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Hero(
              tag: 'gen$id',
              child: Text(
                name ?? '',
                style:
                    GoogleFonts.tradeWinds(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ),
        Expanded(child: Obx(() {
          if (pokedexController.pokemons.isEmpty) return Container();
          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                for (var item in pokedexController.pokemons)
                  Container(
                      // height: 100,
                      child: Center(
                    child: Column(
                      children: [
                        item.image != null
                            ? Image.network(
                                item.image,
                                scale: 5,
                              )
                            : Container(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '#${item.id}' ?? '',
                              style: GoogleFonts.tradeWinds(
                                  fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              item.name ?? '',
                              style: GoogleFonts.tradeWinds(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              ],
            ),
          );
        }))
      ],
    )));
  }
}
