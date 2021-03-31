import 'package:animate_do/animate_do.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutterbase/Controllers/authController.dart';
import 'package:flutterbase/Utils/common.dart';
import 'package:flutterbase/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            Obx(
              () => Container(
                color: Colors.blueGrey,
                width: w(context, 0.3),
                height: h(context, 0.05),
                child:
                    Center(child: Text(controller.token.value ?? 'No Token')),
              ),
            ),
            Button(
                label: 'Update Token',
                onPressed: () {
                  var num = random(1, 100);
                  controller.updateToken(num.toString());
                }),
          ],
        ),
      ),
    );
  }
}
