import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {}

class CounterCubitInitState extends CounterCubitState {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class CounterValueUpdated extends CounterCubitState {
  int counter;
  CounterValueUpdated({required this.counter});
  @override
  List<Object?> get props => [counter];
}
