import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_event.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_state.dart';

import '../../../core/local_auth/local_auth.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final LocalAuth localAuth;

  AuthBloc({required this.authRepository, required this.localAuth})
    : super(const AuthState()) {
    on<AuthenticateBiometricsCheckEvent>(_onAuthenticateBiometricsCheckEvent);
    on<LoginEvent>(_onLoginEvent);
  }

  Future<void> _onAuthenticateBiometricsCheckEvent(
    AuthenticateBiometricsCheckEvent event,
    Emitter<AuthState> emit,
  ) async {
    final canAuthenticate = await localAuth.canAuthenticateBiometrics();
    emit(state.copyWith(canAuthenticate: canAuthenticate));
  }

  Future<void> _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));
    final result = await authRepository.login(event.body);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: AuthStatus.failure,
          failureMessage: failure.message,
        ),
      ),
      (success) =>
          emit(state.copyWith(status: AuthStatus.success, login: success)),
    );
  }
}
