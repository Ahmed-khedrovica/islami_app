part of 'sebha_cubit.dart';

@immutable
sealed class SebhaState {
  final int counter;

  SebhaState(this.counter);
}

class SebhaInitial extends SebhaState {
  SebhaInitial() : super(0);
}

class SebhaIncrement extends SebhaState {
  SebhaIncrement(super.counter);
}
