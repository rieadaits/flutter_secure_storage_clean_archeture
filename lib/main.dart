import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_fintech_task/src/core/di/injection_container.dart' as di;
import 'package:flutter_fintech_task/src/presentation/core/app_widget.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWidget();
  }
}
