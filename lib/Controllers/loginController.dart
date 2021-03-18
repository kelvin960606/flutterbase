import 'package:flutterbase/Constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString username = ''.obs;
  RxString password = ''.obs;
  RxString error = ''.obs;

  void setUsername(value) {
    username.value = value;
  }

  void setPassword(value) {
    password.value = value;
  }

  void setError(value) {
    error.value = value;
  }

  void submit() {
    error.value = '';
    if (username.value.isEmpty) {
      error.value = 'Username cannot empty';
      return;
    }
    if (password.value.isEmpty) {
      error.value = 'Password cannot empty';
      return;
    }
    if (username.value != 'admin' || password.value != 'admin') {
      error.value = 'Incorrect username or password.';
      return;
    } else {
      Get.snackbar(
        'Login Successfully',
        'Welcome to Our App',
        backgroundColor: secondary,
      );
      Get.toNamed('/home');
    }
  }
}
