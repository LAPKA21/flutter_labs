import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screen/cubit/main_screen_cubit_provider.dart';
import 'screen/FirstScreen.dart';
import 'screen/SecondScreen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => NavigationCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state is FirstScreenState) {
            return FirstScreen();
          } else if (state is SecondScreenState) {
            return SecondScreen(numA: state.numA, numB: state.numB, result: state.result);
          }
          return SizedBox(); // Если вдруг произойдет какая-то ошибка и нельзя будет перейти в известные состояния
        },
      ),
    );
  }
}
