import 'package:block_starter/cubit/dashboard_cubit.dart';
import 'package:block_starter/service_locator/service_locator.dart';
import 'package:block_starter/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter bloc',
      home: BlocProvider.value(
        value: servicelocator<DashboardCubit>(),
        child: DashboardCubitView(),
      ),
    );
  }
}
    // providers: [
    // BlocProvider(create: (context) => servicelocator<CounterCubit>()),
    // BlocProvider(create: (context) => servicelocator<ArithmeticCubit>()),
    // BlocProvider(create: (context) => servicelocator<StudentCubit>()),
    // BlocProvider(create: (context) => servicelocator<AreaOfCircleCubit>()),
    // BlocProvider(
    //     create: (context) => servicelocator<SimpleInterestCubit>()),
    // BlocProvider(
    //     create: (context) => servicelocator<AreaOfTriangleCubit>()),
    // BlocProvider(create: (context) => servicelocator<DashboardCubit>())
    // BlocProvider(
    //   create: (context) => DashboardCubit(
    //       context.read<CounterCubit>(),
    //       context.read<ArithmeticCubit>(),
    //       context.read<StudentCubit>(),
    //       context.read<SimpleInterestCubit>(),
    //       context.read<AreaOfCircleCubit>(),
    //       context.read<AreaOfTriangleCubit>()),
    // ),
    // ],
    // child:
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DashboardCubitView(),
//       //),
//     );
//   }
// }
