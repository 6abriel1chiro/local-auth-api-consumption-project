import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class LocalAuthenticationService {
  final _auth = LocalAuthentication();

  bool isAuthenticated = false;

  Future<void> authenticate() async {
    try {
      isAuthenticated = await _auth.authenticate(
        localizedReason: 'authenticate to access',
      );
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
