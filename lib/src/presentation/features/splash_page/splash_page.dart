import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/core/route/app_route.dart';
import '../../../core/di/injection_container.dart';
import '../../bloc/system_auth_bloc/system_auth_bloc.dart';

@RoutePage()
class SpalasPage extends StatelessWidget {
  const SpalasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<AppAuthBloc>()..add(AppStarted()),
      child: BlocListener<AppAuthBloc, AppAuthState>(
        listener: (context, state) {
          if (state is Unauthenticated) {
            context.router.pushAndPopUntil(
              const LoginRoute(),
              predicate: (_) => false,
            );
          } else {
            context.router.pushAndPopUntil(
              const UserRoute(),
              predicate: (_) => false,
            );
          }
        },
        child: Container(),
      ),
    );
  }
}
