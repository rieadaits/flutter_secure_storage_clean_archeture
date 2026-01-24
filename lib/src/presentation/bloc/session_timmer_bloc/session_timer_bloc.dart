import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/token_storage.dart';

part 'session_timer_event.dart';
part 'session_timer_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  Timer? _sessionTimer;
  Timer? _backgroundTimer;
  DateTime? _backgroundTime;
  TokenStorage tokenStorage;

  static const Duration _sessionTimeout = Duration(minutes: 1);
  static const Duration _checkInterval = Duration(seconds: 5);

  SessionBloc({required this.tokenStorage}) : super(SessionInitial()) {
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<StartSession>(_onStartSession);
    on<ResetSession>(_onResetSession);
    on<UserInteraction>(_onUserInteraction);
    on<SessionExpired>(_onSessionExpired);
    on<UserLoggedOut>(_onUserLoggedOut);
    on<AppResumed>(_onAppResumed);
    on<AppPaused>(_onAppPaused);
  }

Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<SessionState> emit,
  ) async {
    debugPrint('🔍 SessionBloc: Checking auth status...');
    
    final hasToken = await tokenStorage.hasValidToken();
    
    if (hasToken) {
      debugPrint('✅ Valid token found - Starting session');
      emit(const SessionActive());
      _startSessionTimer();
    } else {
      debugPrint('❌ No valid token - Session inactive');
      emit(const SessionInactive());
    }
  }

    Future<void> _onUserLoggedOut(
    UserLoggedOut event,
    Emitter<SessionState> emit,
  ) async {
    debugPrint('🚪 SessionBloc: UserLoggedOut event received');
    _cancelAllTimers();
    
    // Clear tokens on logout
    await tokenStorage.clear();
    
    emit(const SessionInactive());
  }

  void _onStartSession(StartSession event, Emitter<SessionState> emit) {
    debugPrint('📱 SessionBloc: StartSession event received');
    _cancelAllTimers();
    emit(SessionActive());
    _startSessionTimer();
  }

  void _onResetSession(ResetSession event, Emitter<SessionState> emit) {
    debugPrint('🔄 SessionBloc: ResetSession event received');
    if (state is SessionActive) {
      _cancelSessionTimer();
      _startSessionTimer();
    }
  }

  void _onUserInteraction(UserInteraction event, Emitter<SessionState> emit) {
    debugPrint('👆 SessionBloc: UserInteraction event received');
    if (state is SessionActive) {
      _cancelSessionTimer();
      _startSessionTimer();
    }
  }

  void _onSessionExpired(SessionExpired event, Emitter<SessionState> emit) {
    debugPrint('⏰ SessionBloc: SessionExpired event received');
    _cancelAllTimers();
    emit(SessionTimeout());
  }

  void _onAppPaused(AppPaused event, Emitter<SessionState> emit) {
    debugPrint('⏸️ SessionBloc: AppPaused event received');
    if (state is SessionActive) {
      _backgroundTime = DateTime.now();
      debugPrint('⏸️ Background time recorded: $_backgroundTime');
      _cancelSessionTimer();
      _startBackgroundTimer();
    }
  }

  void _onAppResumed(AppResumed event, Emitter<SessionState> emit) {
    debugPrint('▶️ SessionBloc: AppResumed event received');
    _cancelBackgroundTimer();

    if (state is SessionActive && _backgroundTime != null) {
      final elapsed = DateTime.now().difference(_backgroundTime!);
      debugPrint('▶️ Time in background: ${elapsed.inSeconds} seconds');

      if (elapsed >= _sessionTimeout) {
        debugPrint('❌ Session expired while in background');
        add(SessionExpired());
      } else {
        debugPrint('✅ Session still valid, restarting timer');
        _startSessionTimer();
      }
      _backgroundTime = null;
    }
  }

  void _startSessionTimer() {
    debugPrint('⏱️ Starting session timer (${_sessionTimeout.inSeconds}s)');
    _sessionTimer = Timer(_sessionTimeout, () {
      debugPrint('⏰ Session timer expired!');
      add(SessionExpired());
    });
  }

  void _startBackgroundTimer() {
    debugPrint('⏱️ Starting background check timer');
    _backgroundTimer = Timer.periodic(_checkInterval, (timer) {
      if (_backgroundTime != null) {
        final elapsed = DateTime.now().difference(_backgroundTime!);
        debugPrint('🔍 Background check: ${elapsed.inSeconds}s elapsed');

        if (elapsed >= _sessionTimeout) {
          debugPrint('❌ Background timer expired!');
          timer.cancel();
          add(SessionExpired());
        }
      } else {
        timer.cancel();
      }
    });
  }

  void _cancelSessionTimer() {
    if (_sessionTimer != null) {
      debugPrint('🛑 Cancelling session timer');
      _sessionTimer?.cancel();
      _sessionTimer = null;
    }
  }

  void _cancelBackgroundTimer() {
    if (_backgroundTimer != null) {
      debugPrint('🛑 Cancelling background timer');
      _backgroundTimer?.cancel();
      _backgroundTimer = null;
    }
  }

  void _cancelAllTimers() {
    _cancelSessionTimer();
    _cancelBackgroundTimer();
    _backgroundTime = null;
  }

  @override
  Future<void> close() {
    debugPrint('🔚 SessionBloc: Closing and cleaning up timers');
    _cancelAllTimers();
    return super.close();
  }
}
