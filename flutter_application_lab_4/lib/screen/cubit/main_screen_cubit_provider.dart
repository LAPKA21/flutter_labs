import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

// Состояния в который может перейти экран
abstract class NavigationState {}

class FirstScreenState extends NavigationState {}

class SecondScreenState extends NavigationState {
  final int numA;
  final int numB;
  final num result;

  SecondScreenState({required this.numA, required this.numB, required this.result});
}

// Основная логика кубита, показ экранов и расчеты
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(FirstScreenState());

  void showFirstScreen() {
    emit(FirstScreenState());
  }

  void calculateAndShowSecondScreen(int numA, int numB) {
    num result = pow(numA, 2) + pow(numB, 2);
    emit(SecondScreenState(numA: numA, numB: numB, result: result));
  }
}
