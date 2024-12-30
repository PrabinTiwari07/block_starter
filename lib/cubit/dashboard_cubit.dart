import 'package:block_starter/cubit/area_of_circle_cubit.dart';
import 'package:block_starter/cubit/area_of_triangle_cubit.dart';
import 'package:block_starter/cubit/arithmetic_cubit.dart';
import 'package:block_starter/cubit/counter_cubit.dart';
import 'package:block_starter/cubit/simple_interest_cubit.dart';
import 'package:block_starter/cubit/student_cubit.dart';
import 'package:block_starter/view/area_of_circle_cubit_view.dart';
import 'package:block_starter/view/area_of_triangle_cubit_view.dart';
import 'package:block_starter/view/arithmetic_cubit_view.dart';
import 'package:block_starter/view/counter_cubit_view.dart';
import 'package:block_starter/view/simple_interest_cubit_view.dart';
import 'package:block_starter/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:block_starter/simp';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._simpleInterestCubit,
    this._areaofcircleCubit,
    this._areaoftriangleCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaofcircleCubit;
  final AreaOfTriangleCubit _areaoftriangleCubit;

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

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofcircleCubit,
          child: const AreaOfCircleCubitView(),
        ),
      ),
    );
  }

  void openAreaOfTriangleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaoftriangleCubit,
          child: const AreaOfTriangleCubitView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: const SimpleInterestCubitView(),
        ),
      ),
    );
  }
}
