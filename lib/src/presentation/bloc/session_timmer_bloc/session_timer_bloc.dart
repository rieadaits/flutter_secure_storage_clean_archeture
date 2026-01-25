import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/network/token_storage.dart';

part 'session_timer_event.dart';
part 'session_timer_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  Timer? _sessionTimer;
  DateTime? _backgroundTime;
  final TokenStorage tokenStorage;

  static const _sessionTimeout = Duration(minutes: 1);

  SessionBloc({required this.tokenStorage}) : super(SessionInitial()) {
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<StartSession>(_onStartSession);
    on<UserInteraction>(_onUserInteraction);
    on<AppPaused>(_onAppPaused);
    on<AppResumed>(_onAppResumed);
    on<SessionExpired>(_onSessionExpired);
    on<UserLoggedOut>(_onUserLoggedOut);
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<SessionState> emit,
  ) async {
    final hasToken = await tokenStorage.hasValidToken();

    if (hasToken) {
      emit(SessionActive());
      _startSessionTimer();
    } else {
      emit(SessionInactive());
    }
  }

  void _onStartSession(StartSession event, Emitter<SessionState> emit) {
    _restartSessionTimer();
    emit(SessionActive());
  }

  void _onUserInteraction(UserInteraction event, Emitter<SessionState> emit) {
    if (state is SessionActive) {
      _restartSessionTimer();
    }
  }

  void _onAppPaused(AppPaused event, Emitter<SessionState> emit) async {
    _backgroundTime = DateTime.now().toUtc();
    await tokenStorage.saveStringValuesOnly(
      key: 'background_time',
      value: _backgroundTime!.toIso8601String(),
    );

    _cancelSessionTimer();
  }

  void _onAppResumed(AppResumed event, Emitter<SessionState> emit) async {
    final hasToken = await tokenStorage.hasValidToken();
    if (!hasToken) {
      add(UserLoggedOut());
    }

    final savedTimeInString = await tokenStorage.getStringValuesOnly(
      'background_time',
    );

    final savedTime = savedTimeInString != null
        ? DateTime.parse(savedTimeInString).toLocal()
        : null;

    if (savedTime == null) {
      _startSessionTimer();
      return;
    }

    final elapsed = DateTime.now().difference(savedTime);

    if (elapsed >= _sessionTimeout) {
      add(SessionExpired());
    } else {
      _startSessionTimer();
    }

    await tokenStorage.clearByKey('background_time');
  }

  void _onSessionExpired(
    SessionExpired event,
    Emitter<SessionState> emit,
  ) async {
    _cancelSessionTimer();
    await tokenStorage.clear();
    emit(SessionTimeout());
  }

  void _onUserLoggedOut(UserLoggedOut event, Emitter<SessionState> emit) async {
    _cancelSessionTimer();
    await tokenStorage.clear();
    emit(SessionInactive());
  }

  void _restartSessionTimer() {
    _cancelSessionTimer();
    _startSessionTimer();
  }

  void _startSessionTimer() {
    _sessionTimer = Timer(_sessionTimeout, () {
      add(StartSession());
    });
  }

  void _cancelSessionTimer() {
    _sessionTimer?.cancel();
    _sessionTimer = null;
  }

  @override
  Future<void> close() {
    _cancelSessionTimer();
    return super.close();
  }
}
