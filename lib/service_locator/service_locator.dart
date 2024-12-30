import 'package:block_starter/cubit/area_of_circle_cubit.dart';
import 'package:block_starter/cubit/area_of_triangle_cubit.dart';
import 'package:block_starter/cubit/arithmetic_cubit.dart';
import 'package:block_starter/cubit/counter_cubit.dart';
import 'package:block_starter/cubit/dashboard_cubit.dart';
import 'package:block_starter/cubit/simple_interest_cubit.dart';
import 'package:block_starter/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final servicelocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCubit();
}

void _initCubit() {
  servicelocator.registerFactory<CounterCubit>(() => CounterCubit());
  servicelocator.registerFactory<ArithmeticCubit>(() => ArithmeticCubit());
  servicelocator.registerFactory<StudentCubit>(() => StudentCubit());
  servicelocator.registerFactory<AreaOfCircleCubit>(() => AreaOfCircleCubit());
  servicelocator
      .registerFactory<AreaOfTriangleCubit>(() => AreaOfTriangleCubit());
  servicelocator
      .registerFactory<SimpleInterestCubit>(() => SimpleInterestCubit());

  servicelocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      servicelocator(),
      servicelocator(),
      servicelocator(),
      servicelocator(),
      servicelocator(),
      servicelocator(),
    ),
  );
}
