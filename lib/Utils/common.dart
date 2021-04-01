import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constant/styles.dart';

double h(context, percentage) {
  return MediaQuery.of(context).size.height * percentage;
}

double w(context, percentage) {
  return MediaQuery.of(context).size.width * percentage;
}

int random(min, max) {
  var rn = new Random();
  return min + rn.nextInt(max - min);
}

void showSuccess(title, desc) {
  Get.snackbar(
    title,
    desc,
    backgroundColor: primary,
    colorText: Colors.white,
  );
}

void showError(title, desc) {
  Get.snackbar(
    title,
    desc,
    backgroundColor: error,
    colorText: Colors.white,
  );
}
