import 'package:everything_about_flutter_bloc/modules/user/cubit/user_cubit.dart';
import 'package:everything_about_flutter_bloc/modules/user/cubit/user_cubit_state.dart';
import 'package:everything_about_flutter_bloc/modules/user/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserCubit>().getAllUserList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserView'),
      ),
      body: BlocBuilder<UserCubit, UserCubitState>(
        builder: (context, state) {
          if (state is UserCubitDataLoaded) {
            return ListView.builder(
              itemCount: state.userList.length,
              itemBuilder: (BuildContext context, int index) {
                UserModel userModel = state.userList[index];
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [Text('${userModel.name}')],
                  ),
                );
              },
            );
          } else {
            return Text('data');
          }
        },
      ),
    );
  }
}
