import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/authentication/authentication_remote_data_sources.dart';
import 'package:flutter_fintech_task/src/data/repository/auth_repository_impl.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

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

  // Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl(), storage: sl()));

  // Data sources
  sl.registerLazySingleton<AuthenticationRemoteDataSources>(() => AuthenticationRemoteDataSourcesImpl(client: sl()));

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker.instance);
    
}
