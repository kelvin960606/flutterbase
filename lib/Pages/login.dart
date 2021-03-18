import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:get/get.dart';
import 'package:flutterbase/Controllers/loginController.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClayText(
              "Login",
              emboss: true,
              size: 40,
            ),
            SizedBox(
              height: 50,
            ),
            ClayContainer(
              color: Color(0xFFF2F2F2),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Username",
                      fillColor: Colors.white,
                      border: InputBorder.none),
                  onChanged: loginController.setUsername,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClayContainer(
              color: Color(0xFFF2F2F2),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.white,
                      border: InputBorder.none),
                  onChanged: loginController.setPassword,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(() {
              if (loginController.error.value.isNotEmpty)
                return Text(
                  loginController.error.value,
                  style: TextStyle(color: error, fontSize: 15),
                );
              return Container();
            }),
            SizedBox(
              height: 10,
            ),
            ClayContainer(
              color: Color(0xFFF2F2F2),
              child: InkWell(
                onTap: loginController.submit,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 35),
                  child: new Text(
                    'Login',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
