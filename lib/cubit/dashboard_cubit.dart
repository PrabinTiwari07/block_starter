import 'package:block_starter/cubit/arithmetic_cubit.dart';
import 'package:block_starter/cubit/counter_cubit.dart';
import 'package:block_starter/cubit/student_cubit.dart';
import 'package:block_starter/view/arithmetic_cubit_view.dart';
import 'package:block_starter/view/counter_cubit_view.dart';
import 'package:block_starter/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._counterCubit, this._arithmeticCubit, this._studentCubit)
      : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: const CounterCubitView(),
        ),
      ),
    );
  }

  void openArtithemeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }
}
