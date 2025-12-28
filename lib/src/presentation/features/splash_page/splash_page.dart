import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fintech_task/src/core/route/app_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/constant/storage_keys.dart';

@RoutePage()
class SpalasPage extends StatefulWidget {
  const SpalasPage({super.key});

  @override
  State<SpalasPage> createState() => _SpalasPageState();
}

class _SpalasPageState extends State<SpalasPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final storage = FlutterSecureStorage();
      final token = await storage.read(
        key: StorageKeys.accessToken ?? 'access',
      );
      if (token != null) {
        // ignore: use_build_context_synchronously
        context.router.pushAndPopUntil(UserRoute(), predicate: (_) => false);
      } else {
        // ignore: use_build_context_synchronously
        context.router.pushAndPopUntil(LoginRoute(), predicate: (_) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
