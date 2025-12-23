import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalBiometricAuth {
  final _localAuthentication = LocalAuthentication();

  Future<bool> canAuthenticateBiometrics() async {
    try {
      final bool canAuthenticate =
          await _localAuthentication.canCheckBiometrics ||
          await _localAuthentication.isDeviceSupported();
      return canAuthenticate;
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  /// Get available biometric types
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuthentication.getAvailableBiometrics();
    } catch (e) {
      log('Error getting available biometrics: $e');
      return [];
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
