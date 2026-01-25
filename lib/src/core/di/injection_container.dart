import 'package:flutter_fintech_task/src/core/network/dio_client.dart';
import 'package:flutter_fintech_task/src/core/network/token_storage.dart';
import 'package:flutter_fintech_task/src/core/route/app_route.dart';
import 'package:flutter_fintech_task/src/core/route/navigation_service.dart';
import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/authentication_remote_data_sources.dart';
import 'package:flutter_fintech_task/src/data/repository/auth_repository_impl.dart';
import 'package:flutter_fintech_task/src/data/repository/user_repository_impl.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/session_timmer_bloc/session_timer_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../data/data_sources/remote_data_sources/user_remote_data_source.dart';
import '../../domain/repositories/user_repository/user_repository.dart';
import '../local_biometric_auth/local_biometric_auth.dart';
import '../network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Register the storage instance
  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(aOptions: AndroidOptions()),
  );

  sl.registerLazySingleton<TokenStorage>(() => TokenStorageImpl(storage: sl()));

  // Register Auto Router
  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  // BLoC
  sl.registerLazySingleton(
    () => AuthBloc(authRepository: sl(), localAuth: sl()),
  );
  sl.registerLazySingleton(() => UserBloc(userRepository: sl(), storage: sl()));
  sl.registerLazySingleton(() => SessionBloc(tokenStorage: sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(remoteDataSource: sl()),
  );
  // Data sources
  sl.registerLazySingleton<AuthenticationRemoteDataSources>(
    () => AuthenticationRemoteDataSourcesImpl(client: sl(), storage: sl()),
  );
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(client: sl(), storage: sl()),
  );

  // External
  sl.registerLazySingleton(() => InternetConnectionChecker.instance);

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<DioClient>(
    () => DioClient());
  sl.registerLazySingleton<LocalBiometricAuth>(() => LocalBiometricAuth());

  // // Register Navigator Key first
  // final navigatorKey = GlobalKey<NavigatorState>();
  // sl.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);

  sl.registerLazySingleton<NavigationService>(() => NavigationService(sl()));
}
