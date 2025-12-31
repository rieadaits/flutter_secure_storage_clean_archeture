
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'session_timer_event.dart';
part 'session_timer_state.dart';

class SessionTimerBloc extends Bloc<SessionEvent, SessionState> {
  Timer? _sessionTimer;
  Timer? _backgroundTimer;
  DateTime? _backgroundTime;
  
  static const Duration _sessionTimeout = Duration(minutes: 1);
  static const Duration _checkInterval = Duration(seconds: 5);
  
  SessionTimerBloc() : super(SessionInactive()) {
    on<StartSession>(_onStartSession);
    on<ResetSession>(_onResetSession);
    on<SessionExpired>(_onSessionExpired);
    on<AppResumed>(_onAppResumed);
    on<AppPaused>(_onAppPaused);
  }

  void _onStartSession(StartSession event, Emitter<SessionState> emit) {
    _cancelTimers();
    emit(SessionActive());
    _startSessionTimer();
  }

  void _onResetSession(ResetSession event, Emitter<SessionState> emit) {
    if (state is SessionActive) {
      _cancelTimers();
      _startSessionTimer();
    }
  }

  void _onSessionExpired(SessionExpired event, Emitter<SessionState> emit) {
    _cancelTimers();
    emit(SessionTimeout());
  }

  void _onAppPaused(AppPaused event, Emitter<SessionState> emit) {
    if (state is SessionActive) {
      _backgroundTime = DateTime.now();
      _cancelTimers();
      _startBackgroundTimer();
    }
  }

  void _onAppResumed(AppResumed event, Emitter<SessionState> emit) {
    _cancelBackgroundTimer();
    
    if (state is SessionActive && _backgroundTime != null) {
      final elapsed = DateTime.now().difference(_backgroundTime!);
      
      if (elapsed >= _sessionTimeout) {
        add(SessionExpired());
      } else {
        _startSessionTimer();
      }
      _backgroundTime = null;
    }
  }

    void _startSessionTimer() {
    _sessionTimer = Timer(_sessionTimeout, () {
      add(SessionExpired());
    });
  }

  void _startBackgroundTimer() {
    _backgroundTimer = Timer.periodic(_checkInterval, (timer) {
      if (_backgroundTime != null) {
        final elapsed = DateTime.now().difference(_backgroundTime!);
        if (elapsed >= _sessionTimeout) {
          timer.cancel();
          add(SessionExpired());
        }
      }
    });
  }

  void _cancelTimers() {
    _sessionTimer?.cancel();
    _sessionTimer = null;
  }

  void _cancelBackgroundTimer() {
    _backgroundTimer?.cancel();
    _backgroundTimer = null;
  }

  @override
  Future<void> close() {
    _cancelTimers();
    _cancelBackgroundTimer();
    return super.close();
  }
}
