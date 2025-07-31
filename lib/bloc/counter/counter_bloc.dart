import 'package:bloc/bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {

    on<IncrementEvent>(_onIncrement);
    on<DecrementEvent>(_onDecrement);

  }

  void _onIncrement(IncrementEvent event, Emitter<CounterState> emit) {
    int counter = state.counter;
    emit(state.copyWith(counter: counter + 1));
  }

  void _onDecrement(DecrementEvent event, Emitter<CounterState> emit) {
    int counter = state.counter;
    emit(state.copyWith(counter: counter - 1));
  }

}
