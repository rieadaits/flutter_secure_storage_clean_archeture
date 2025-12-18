import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/di/injection_container.dart';
import '../../../../../core/route/app_route.dart';
import '../../../../../data/models/login_body.dart';
import '../../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../../bloc/auth_bloc/auth_event.dart';
import '../../../../bloc/auth_bloc/auth_state.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text("Login"), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {},
              controller: emailController,
              decoration: InputDecoration(
                label: Text("Email Address"),
                hintText: "Email Address",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {},
              controller: passwordController,
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "password",
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  context.router.push(const UserRoute());
                } else if (state is AuthFailure) {
                  log("Login failed : ${state.message}");
                }
              },
              builder: (context, state) {
                if (state is AuthLoading) {
                  return CircularProgressIndicator();
                }
                return FilledButton(
                  onPressed: () => _onLogin(context, emailController.text, passwordController.text),
                  child: Text("Login"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onLogin(BuildContext context, String email, String password) {
    context.read<AuthBloc>().add(
      LoginEvent(
        body: LoginBody(
          email: email,
          password: password,
          expiresInMins: "1",
        ),
      ),
    );
  }
}
