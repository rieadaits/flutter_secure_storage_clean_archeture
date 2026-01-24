import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/core/di/injection_container.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/session_timmer_bloc/session_timer_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/features/sessions_timer/session_wrapper.dart';

import '../../core/route/app_route.dart';
import '../../core/route/navigation_service.dart';
import '../../core/theme/app_theme.dart';
import '../../core/theme/theme_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()..add(ThemeInitialized())),
        BlocProvider.value(value: sl<SessionBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: sl<AppRouter>().config(),
            title: 'GitHub Repository Explorer',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeState is ThemeLoaded
                ? (themeState.isDarkMode ? ThemeMode.dark : ThemeMode.light)
                : ThemeMode.light,
            builder: (context, widget) {
              return BlocListener<SessionBloc, SessionState>(
                listener: (context, state) {
                  debugPrint(
                    '🎧 BlocListener: State changed to ${state.runtimeType}',
                  );

                  if (state is SessionTimeout) {
                    debugPrint(
                      '🚪 Session timeout detected - Navigating to login',
                    );

                    // Navigate to login
                    sl<NavigationService>().navigatorKey.currentState
                        ?.pushNamedAndRemoveUntil(
                          LoginRoute.name,
                          (route) => false,
                        );

                    // Show timeout message
                    Future.delayed(const Duration(milliseconds: 300), () {
                      ScaffoldMessenger.of(
                        sl<NavigationService>().navigatorKey.currentContext!,
                      ).showSnackBar(
                        const SnackBar(
                          content: Text('⏰ Session expired due to inactivity'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    });
                  } else if (state is SessionInactive) {
                debugPrint('🚪 Session inactive - User logged out');
                sl<NavigationService>().goToLogin();
              }
                },
                child: MediaQuery(
                  ///Setting font does not change with system font size
                  data: MediaQuery.of(
                    context,
                  ).copyWith(textScaler: TextScaler.noScaling),
                  child: SessionWrapper(child: widget ?? const SizedBox()),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
