part of 'session_timer_bloc.dart';

abstract class SessionState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SessionActive extends SessionState {}

class SessionInactive extends SessionState {}

class SessionTimeout extends SessionState {}