import 'package:everything_about_flutter_bloc/config/app_themes.dart';
import 'package:everything_about_flutter_bloc/modules/user/bloc/user_bloc.dart';
import 'package:everything_about_flutter_bloc/modules/user/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(GetUserList());
    return Scaffold(
      backgroundColor: AppThemes.scafoldBackground,
      appBar: AppBar(
        title: const Text('UserView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserDataLoading) {
              return const Center(
                  child: Text(
                'Loading',
                style: TextStyle(fontSize: 32),
              ));
            } else if (state is UserDataLoaded) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.userList.length,
                itemBuilder: (BuildContext context, int index) {
                  UserModel userModel = state.userList[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('${userModel.name}'),
                          const SizedBox(height: 10),
                          Text('${userModel.username}'),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (state is UserDataLoadingError) {
              return Center(
                  child: Text(
                state.errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
