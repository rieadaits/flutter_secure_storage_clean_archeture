import 'package:flutter/material.dart';
import 'package:flutter_fintech_task/src/core/route/app_route.dart';

class NavigationService {
  final AppRouter _router;
  
  // final GlobalKey<NavigatorState> navigatorKey;

  NavigationService(this._router);

  GlobalKey<NavigatorState> get navigatorKey => _router.navigatorKey;

  void goToLogin() {
    _router.replaceAll([const LoginRoute()]);
  }

  void goToHome() {
    _router.replaceAll([const UserRoute()]);
  }

  //   void goToLogin() {
  //   debugPrint('🚪 NavigationService: Going to Login');
  //   navigatorKey.currentState?.pushNamedAndRemoveUntil(
  //     '/login',
  //     (route) => false,
  //   );
  // }

  // void goToHome() {
  //   debugPrint('🏠 NavigationService: Going to Home');
  //   navigatorKey.currentState?.pushNamedAndRemoveUntil(
  //     '/home',
  //     (route) => false,
  //   );
  // }

  void pop() {
    navigatorKey.currentState?.pop();
  }

  void showErrorDialog(String message) {
    final context = navigatorKey.currentContext!;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
      ),
    );
  }
}
