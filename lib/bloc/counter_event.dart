import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
