import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/route/app_route.dart';
import '../../core/theme/app_theme.dart';
import '../../core/theme/theme_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()..add(ThemeInitialized())),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: _appRouter.config(),
            title: 'GitHub Repository Explorer',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeState is ThemeLoaded
                ? (themeState.isDarkMode ? ThemeMode.dark : ThemeMode.light)
                : ThemeMode.light,
            builder: (context, widget) {
              return Toast(
                navigatorKey: _appRouter.navigatorKey,
                child: MediaQuery(
                  ///Setting font does not change with system font size
                  data: MediaQuery.of(
                    context,
                  ).copyWith(textScaler: TextScaler.noScaling),
                  child: widget ?? const SizedBox(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
