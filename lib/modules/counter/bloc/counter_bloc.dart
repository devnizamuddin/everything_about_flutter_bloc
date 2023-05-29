// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrease) {
        counter += 1;
        emit(CounterUpdated(counter: counter));
      } else if (event is CounterDecrease) {
        counter -= 1;
        emit(CounterUpdated(counter: counter));
      }
    });
  }
}
