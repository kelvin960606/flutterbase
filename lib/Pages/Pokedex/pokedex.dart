import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:flutterbase/Controllers/pokedexController.dart';
import 'package:flutterbase/Pages/Pokedex/generations.dart';
import 'package:flutterbase/Utils/common.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Pokedex extends StatelessWidget {
  const Pokedex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PokedexController pokedexController = Get.put(PokedexController());
    pokedexController.init();
    return Scaffold(
      drawer: Container(
        width: w(context, 0.9),
        color: Colors.white,
        child: Column(
          children: [
            Text('Generation'),
            Text('Pokedex'),
          ],
        ),
      ),
      body: Container(
        color: tertiary,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Container(
              color: Colors.white.withOpacity(0.5),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Pokemon Generations',
                    style: GoogleFonts.tradeWinds(fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (pokedexController.generations.isEmpty) return Container();
                return Generations(
                    generations: pokedexController.generations,
                    callback: (id, name) {
                      Get.toNamed('/pokemons?id=$id&name=$name');
                    });
              }),
            )
          ],
        ),
      ),
    );
  }
}
