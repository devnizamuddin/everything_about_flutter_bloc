import 'package:everything_about_flutter_bloc/modules/user/cubit/user_cubit_state.dart';
import 'package:everything_about_flutter_bloc/modules/user/model/user/user.dart';
import 'package:everything_about_flutter_bloc/service/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserCubitState> {
  List<UserModel> userModelList = [];
  ApiService apiService;
  UserCubit({required this.apiService}) : super(UserCubitInit());

  void getAllUserList() async {
    try {
      emit(UserCubitLoading());
      userModelList = await apiService.getUsers();
      emit(UserCubitDataLoaded(userList: userModelList));
    } catch (e) {
      emit(UserCubitError(message: e.toString()));
    }
  }
}
