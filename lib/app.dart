import 'package:block_starter/cubit/student_cubit.dart';
import 'package:block_starter/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider(
        // create: (context) => ArithmeticCubit(),
        // child: ArithmeticCubitView(),
        create: (context) => StudentCubit(),
        child: StudentCubitView(),
      ),
    );
  }
}
