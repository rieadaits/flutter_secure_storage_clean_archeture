import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_entity/user_entity.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
    @override
  List<Object> get props => [];
}

class UserSuccess extends UserState {
  final UserEntity user;
  const UserSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

class UserFailure extends UserState {
  final String message;
  const UserFailure({required this.message});

  @override
  List<Object> get props => [message];
}