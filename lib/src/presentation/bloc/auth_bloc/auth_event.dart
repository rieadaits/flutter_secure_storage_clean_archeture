import 'package:equatable/equatable.dart';
import 'package:flutter_fintech_task/src/data/models/login_body.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final LoginBody body;

  const LoginEvent({required this.body});

  @override
  List<Object> get props => [body];
}