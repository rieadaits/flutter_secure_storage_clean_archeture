import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/log_out/logout_event_bus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/constant/storage_keys.dart';

abstract class AppAuthState {}
class Authenticated extends AppAuthState {}
class Unauthenticated extends AppAuthState {}


abstract class AppAuthEvent {}
class AppStarted extends AppAuthEvent {}
class ForceLogoutEvent extends AppAuthEvent {}

class AppAuthBloc extends Bloc<AppAuthEvent, AppAuthState> {
  final FlutterSecureStorage storage;
  late final StreamSubscription<LogoutEvent> _authSub;

  AppAuthBloc({
    required this.storage,
    required LogoutEventBus authEventBus,
  }) : super(Unauthenticated()) {
    on<AppStarted>(_onAppStarted);
    on<ForceLogoutEvent>(_onForceLogout);

    _authSub = authEventBus.stream.listen((event) {
      if (event == LogoutEvent.forceLogout) {
        add(ForceLogoutEvent());
      }
    });
  }

  Future<void> _onAppStarted(
    AppStarted event,
    Emitter<AppAuthState> emit,
  ) async {
    final token = await storage.read(key: StorageKeys.accessToken ?? "access");
    if (token != null) {
      emit(Authenticated());
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> _onForceLogout(
    ForceLogoutEvent event,
    Emitter<AppAuthState> emit,
  ) async {
    await storage.deleteAll();
    emit(Unauthenticated());
  }

  @override
  Future<void> close() {
    _authSub.cancel();
    return super.close();
  }
}
