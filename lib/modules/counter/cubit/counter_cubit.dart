import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int counter = 0;
  CounterCubit() : super(CounterCubitInitState());

  void increment() {
    counter++;
    emit(CounterValueUpdated(counter: counter));
  }

  void decrease() {
    counter--;
    emit(CounterValueUpdated(counter: counter));
  }
}
