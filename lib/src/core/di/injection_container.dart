import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/authentication/authentication_remote_data_sources.dart';
import 'package:flutter_fintech_task/src/data/repository/auth_repository_impl.dart';
import 'package:flutter_fintech_task/src/data/repository/user_repository_impl.dart' show UserRepositoryImpl;
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/user_bloc/user_bloc.dart' show UserBloc;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../data/data_sources/remote_data_sources/user_remote_data_source.dart';
import '../../domain/repositories/user_repository/user_repository.dart';
import '../network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Register the storage instance
  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(
      aOptions: AndroidOptions(),
    ),
  );

  // BLoC
  sl.registerLazySingleton(() => AuthBloc(authRepository: sl()));
  sl.registerLazySingleton(() => UserBloc(userRepository: sl(), storage: sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(remoteDataSource: sl()));
  // Data sources
  sl.registerLazySingleton<AuthenticationRemoteDataSources>(() => AuthenticationRemoteDataSourcesImpl(client: sl(), storage: sl()));
  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl(client: sl(), storage: sl()));
  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker.instance);
    
}
