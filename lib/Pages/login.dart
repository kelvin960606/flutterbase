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
            Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter Username",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                onChanged: loginController.setUsername,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter Password",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                onChanged: loginController.setPassword,
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: loginController.submit,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: new BorderRadius.circular(25.0)),
                  child: new Text(
                    'Login',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
