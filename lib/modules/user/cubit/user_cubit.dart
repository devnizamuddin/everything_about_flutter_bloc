import 'package:everything_about_flutter_bloc/modules/user/cubit/user_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserCubitState> {
  UserCubit() : super(UserCubitInit());
}
