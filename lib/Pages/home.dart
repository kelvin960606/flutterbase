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
            ClayContainer(
              color: Color(0xFFF2F2F2),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ClayText("Seize the Clay!", emboss: true, size: 40),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClayContainer(
                  emboss: true,
                  color: Color(0xFFF2F2F2),
                  height: 50,
                  width: 50,
                  borderRadius: 50,
                ),
                SizedBox(width: 50),
                ClayContainer(
                  color: Color(0xFFF2F2F2),
                  height: 50,
                  width: 50,
                  borderRadius: 75,
                  curveType: CurveType.concave,
                ),
                SizedBox(width: 50),
                ClayContainer(
                  color: Color(0xFFF2F2F2),
                  height: 50,
                  width: 50,
                  borderRadius: 75,
                  curveType: CurveType.none,
                ),
                SizedBox(width: 50),
                ClayContainer(
                  color: Color(0xFFF2F2F2),
                  height: 50,
                  width: 50,
                  borderRadius: 75,
                  curveType: CurveType.convex,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
