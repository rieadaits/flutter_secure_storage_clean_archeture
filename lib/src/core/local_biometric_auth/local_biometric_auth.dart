import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalBiometricAuth {
  final _localAuthentication = LocalAuthentication();

  Future<bool> canAuthenticateBiometrics() async {
    try {
      return await _localAuthentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> authenticate() async {
    try {
      return await _localAuthentication.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        biometricOnly: true,
      );
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
