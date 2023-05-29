// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {}

class CounterInitial extends CounterState {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class CounterUpdated extends CounterState {
  int counter;
  CounterUpdated({required this.counter});

  @override
  List<Object?> get props => [counter];
}
