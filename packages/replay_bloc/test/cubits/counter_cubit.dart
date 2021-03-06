import 'package:bloc/bloc.dart';
import 'package:replay_bloc/replay_bloc.dart';

class CounterCubit extends ReplayCubit<int> {
  CounterCubit({int? limit}) : super(0, limit: limit);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

class CounterCubitMixin extends Cubit<int> with ReplayCubitMixin<int> {
  CounterCubitMixin({int? limit}) : super(0) {
    if (limit != null) {
      this.limit = limit;
    }
  }

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
