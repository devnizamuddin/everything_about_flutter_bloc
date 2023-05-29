part of 'user_bloc.dart';

abstract class UserState extends Equatable {}

class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

class UserDataLoading extends UserState {
  @override
  List<Object?> get props => [];
}

class UserDataLoaded extends UserState {
  final List<UserModel> userList;
  UserDataLoaded({required this.userList});

  @override
  List<Object?> get props => [userList];
}

class UserDataLoadingError extends UserState {
  final String errorMessage;
  UserDataLoadingError({required this.errorMessage});
  @override
  List<Object?> get props => [];
}
