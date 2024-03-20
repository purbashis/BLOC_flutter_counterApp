

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
 on<CounterIncrementEvent>(_increment);
 on<CounterDecrementEvent>(_decrement);


  }




  FutureOr<void> _increment(CounterIncrementEvent event, Emitter<CounterState> emit) {
  
  emit(state.copyWith(counter: state.counter + 1));
  
  }




  FutureOr<void> _decrement(CounterDecrementEvent event, Emitter<CounterState> emit) {
  emit(state.copyWith(counter: state.counter - 1));
  
  }

}