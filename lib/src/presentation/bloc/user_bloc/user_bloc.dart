import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/user_bloc/user_event.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../domain/repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final FlutterSecureStorage storage;

  UserBloc({required this.userRepository, required this.storage})
    : super(UserInitial()) {
    on<GetUserEvent>(_onGetUserEvent);
  }

  Future<void> _onGetUserEvent(
    GetUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(UserLoading());
    final result = await userRepository.getUser();
    result.fold(
      (failure) => emit(UserFailure(message: failure.message)),
      (success) => emit(UserSuccess(user: success)),
    );
  }
}
