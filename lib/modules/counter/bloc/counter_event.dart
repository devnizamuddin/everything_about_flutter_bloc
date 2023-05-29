part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {}

class CounterIncrease extends CounterEvent {
  @override
  List<Object?> get props => [];
}

class CounterDecrease extends CounterEvent {
  @override
  List<Object?> get props => [];
}
