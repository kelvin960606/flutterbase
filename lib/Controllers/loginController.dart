import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/common.dart';

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
    showSuccess(
      'Verify Code Sent',
      'Please check your SMS.',
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
      showSuccess(
        'Error',
        'Please try after ${countDown.value}s.',
      );
    }
  }

  void login() {
    if (phone.value.isEmpty) {
      showError(
        'Error',
        'Phone number cannot empty',
      );
      return;
    }
    if (code.value.isEmpty) {
      showError(
        'Error',
        'Verify code cannot empty',
      );
      return;
    }
    showSuccess(
      'Login Successfully',
      'Welcome to Our App',
    );
    Get.offAndToNamed('/home');
  }
}
