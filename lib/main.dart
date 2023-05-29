import 'package:everything_about_flutter_bloc/modules/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/counter/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterBloc())],
      child: MaterialApp(
        title: 'FLUTTER BLOC',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CounterView(),
      ),
    );
  }
}
