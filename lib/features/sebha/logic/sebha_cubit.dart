import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaInitial());

  void incrementCounter() {
    emit(SebhaIncrement(state.counter + 1));
  }
}
