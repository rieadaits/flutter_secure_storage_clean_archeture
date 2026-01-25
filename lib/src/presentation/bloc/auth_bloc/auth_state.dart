import 'package:equatable/equatable.dart';
import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';

enum AuthStatus { initial, loading, success, failure }

class AuthState extends Equatable {
  final bool canAuthenticate;
  final Login login;
  final String failureMessage;
  final AuthStatus status;

  const AuthState({
    this.canAuthenticate = false,
    this.login = const Login(),
    this.failureMessage = '',
    this.status = AuthStatus.initial,
  });

  AuthState copyWith({
    bool? canAuthenticate,
    Login? login,
    String? failureMessage,
    AuthStatus? status,
  }) {
    return AuthState(
      canAuthenticate: canAuthenticate ?? this.canAuthenticate,
      login: login ?? this.login,
      failureMessage: failureMessage ?? this.failureMessage,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [canAuthenticate, login, failureMessage, status];
}
