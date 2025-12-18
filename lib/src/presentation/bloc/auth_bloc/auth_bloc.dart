

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_event.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_state.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()){
    on<LoginEvent>(_onLoginEvent);
  }

  Future<void> _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await authRepository.login(event.body);
    result.fold((failure) => emit(AuthFailure(message: failure.message)), 
    (success) => emit(AuthSuccess(login: success)));
  }

}