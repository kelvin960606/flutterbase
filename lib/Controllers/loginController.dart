import 'package:flutterbase/Constant/styles.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString username = ''.obs;
  RxString password = ''.obs;
  RxString error = ''.obs;

  void setUsername(value) {
    setError('');
    username.value = value;
  }

  void setPassword(value) {
    setError('');
    password.value = value;
  }

  void setError(value) {
    error.value = value;
  }

  void submit() {
    error.value = '';
    if (username.value.isEmpty) {
      setError('Username cannot empty');
      return;
    }
    if (password.value.isEmpty) {
      setError('Password cannot empty');
      return;
    }
    if (username.value != 'admin' || password.value != 'admin') {
      setError('Incorrect username or password.');
      return;
    } else {
      Get.snackbar(
        'Login Successfully',
        'Welcome to Our App',
        backgroundColor: secondary,
      );
      Get.offAndToNamed('/home');
    }
  }
}
