import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'signin': 'Sign In',
          'phoneNum': 'Phone Number',
          'code': 'Verify Code',
          'sendcode': 'Send Code',
          'user': 'User',
          'driver': 'Driver',
        },
        'tr_TR': {
          'signin': 'Oturum aç',
          'phoneNum': 'Telefon numarası',
          'code': 'Doğrulama kodu',
          'sendcode': 'Kodu gönder',
          'user': 'Kullanıcı',
          'driver': 'Sürücü',
        }
      };
}
