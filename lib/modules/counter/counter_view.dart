import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 48),
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return (state is CounterUpdated)
                ? Text(
                    '${state.counter}',
                    style: textStyle,
                  )
                : const Text(
                    '0',
                    style: textStyle,
                  );
          }),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrease());
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrease());
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
