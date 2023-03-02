import 'package:everything_about_flutter_bloc/modules/home/cubit/counter_cubit.dart';
import 'package:everything_about_flutter_bloc/modules/home/cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 32);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterCubitState>(
            builder: (context, state) {
              return (state is CounterValueUpdated)
                  ? Text(
                      '${state.counter}',
                      style: textStyle,
                    )
                  : const Text(
                      '0',
                      style: textStyle,
                    );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrease();
                  },
                  child: const Icon(Icons.remove),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
