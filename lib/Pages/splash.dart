import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/image.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:flutterbase/Utils/common.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.offAndToNamed('/login');
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Image.asset(
                logo,
                scale: 1.5,
              ),
            ),
            SizedBox(
              height: h(context, 0.01),
            ),
            Text('A simpler way to deliver', style: loginTagLine),
          ],
        ),
      ),
    );
  }
}
