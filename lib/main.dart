import 'package:everything_about_flutter_bloc/modules/user/cubit/user_cubit.dart';
import 'package:everything_about_flutter_bloc/service/api_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/user/view/user_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit(apiService: ApiService()))
      ],
      child: MaterialApp(
        title: 'FLUTTER BLOC',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const UserView(),
      ),
    );
  }
}
