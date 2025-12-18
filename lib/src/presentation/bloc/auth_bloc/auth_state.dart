import 'package:equatable/equatable.dart';
import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSuccess extends AuthState {
  final Login login;

  const AuthSuccess({required this.login});

  @override
  List<Object> get props => [login];
}

class AuthFailure extends AuthState {
  final String message;

  const AuthFailure({required this.message});

  @override
  List<Object> get props => [message];
}