import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
  }
}
