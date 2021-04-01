import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString phone = ''.obs;
  RxString code = ''.obs;
  Rx<FocusNode> phoneFocus = FocusNode().obs;
  Rx<FocusNode> codeFocus = FocusNode().obs;
  RxInt selectedTab = 1.obs;
  RxInt countDown = 0.obs;
  RxString selectedLanguage = 'English'.obs;

  @override
  void onInit() {
    super.onInit();
    var lang = Get.locale.languageCode;
    if (lang == 'en') {
      selectedLanguage.value = 'English';
    } else if (lang == 'tr') {
      selectedLanguage.value = 'Turkish';
    }
  }

  void setSelectedTab(value) {
    selectedTab.value = value;
  }

  void setPhone(value) {
    phone.value = value;
  }

  void setVerifyCode(value) {
    code.value = value;
  }

  void updateLocale(lang) {
    if (lang == 'en') {
      Get.updateLocale(Locale('en', 'US'));
      selectedLanguage.value = 'English';
    } else if (lang == 'tr') {
      Get.updateLocale(Locale('tr', 'TR'));
      selectedLanguage.value = 'Turkish';
    }
    Get.back();
  }

  void sendCode() {
    Get.snackbar(
      'Verify Code Sent',
      'Please check your SMS.',
      backgroundColor: primary,
    );
    startTimer();
  }

  void startTimer() {
    if (countDown.value == 0) {
      countDown.value = 60;
      Timer _timer;
      if (_timer != null) {
        _timer.cancel();
        _timer = null;
      } else {
        _timer = new Timer.periodic(const Duration(seconds: 1), (Timer timer) {
          if (countDown.value < 1) {
            timer.cancel();
          } else {
            countDown.value -= 1;
          }
        });
      }
    } else {
      Get.snackbar(
        'Error',
        'Please try after ${countDown.value}s.',
        backgroundColor: error,
      );
    }
  }

  void login() {
    if (phone.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Phone number cannot empty',
        backgroundColor: error,
      );
      return;
    }
    if (code.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Verify code cannot empty',
        backgroundColor: error,
      );
      return;
    }
    Get.snackbar(
      'Login Successfully',
      'Welcome to Our App',
      backgroundColor: secondary,
    );
    Get.offAndToNamed('/home');
  }
}
