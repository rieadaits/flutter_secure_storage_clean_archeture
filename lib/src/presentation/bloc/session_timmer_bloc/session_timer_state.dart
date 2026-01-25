part of 'session_timer_bloc.dart';

abstract class SessionState extends Equatable {
  const SessionState();
  @override
  List<Object?> get props => [];
}

class SessionInitial extends SessionState {
  const SessionInitial();
}

class SessionActive extends SessionState {
  const SessionActive();
}

class SessionInactive extends SessionState {
  const SessionInactive();
}

class SessionTimeout extends SessionState {
  const SessionTimeout();
}