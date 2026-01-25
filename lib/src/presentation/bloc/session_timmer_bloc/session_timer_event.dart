part of 'session_timer_bloc.dart';

abstract class SessionEvent extends Equatable {
  const SessionEvent();
  @override
  List<Object?> get props => [];
}

class StartSession extends SessionEvent {
  const StartSession();
}

class ResetSession extends SessionEvent {
  const ResetSession();
}

class SessionExpired extends SessionEvent {
  const SessionExpired();
}

class AppResumed extends SessionEvent {
  const AppResumed();
}

class AppPaused extends SessionEvent {
  const AppPaused();
}

class UserInteraction extends SessionEvent {
  const UserInteraction();
}

class CheckAuthStatus extends SessionEvent {
  const CheckAuthStatus();
}

class UserLoggedOut extends SessionEvent {
  const UserLoggedOut();
}
