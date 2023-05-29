import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/user/bloc/user_bloc.dart';
import 'modules/user/view/user_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserBloc())],
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
