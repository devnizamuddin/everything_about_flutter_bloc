import 'package:equatable/equatable.dart';
import 'package:everything_about_flutter_bloc/service/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/user/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  List<UserModel> userModelList = [];

  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      ApiService apiService = ApiService();
      if (event is GetUserList) {
        try {
          emit(UserDataLoading());
          userModelList = await apiService.getUsers();
          emit(UserDataLoaded(userList: userModelList));
        } catch (e) {
          emit(UserDataLoadingError(errorMessage: e.toString()));
        }
      }
    });
  }
}
