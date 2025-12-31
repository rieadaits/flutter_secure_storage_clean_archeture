part of 'session_timer_bloc.dart';

abstract class SessionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartSession extends SessionEvent {}

class ResetSession extends SessionEvent {}

class SessionExpired extends SessionEvent {}

class AppResumed extends SessionEvent {}

class AppPaused extends SessionEvent {}
