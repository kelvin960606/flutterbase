import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:flutterbase/Utils/common.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:flutterbase/Controllers/pokedexController.dart';
import 'package:google_fonts/google_fonts.dart';

class Generations extends StatelessWidget {
  const Generations({Key key, this.generations, this.callback})
      : super(key: key);

  final RxList<Gen> generations;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context, 1),
      color: tertiary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            for (var item in generations)
              InkWell(
                onTap: () => callback(item.id, item.name),
                child: new ClipRect(
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      width: w(context, 1),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Hero(
                            tag: 'gen${item.id}',
                            child: Text(
                              item.name,
                              style: GoogleFonts.tradeWinds(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
