// import 'package:flutter/material.dart';

// class AreaOfTriangleCubitView extends StatelessWidget {
//   const AreaOfTriangleCubitView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Area of Triangle"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(15.0),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Enter base here",
//               ),
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Enter height here",
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {}, child: Text("Calculate area of triangle"))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/area_of_triangle_cubit.dart';

class AreaOfTriangleCubitView extends StatelessWidget {
  const AreaOfTriangleCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final baseController = TextEditingController();
    final heightController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Triangle Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: 'Base'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: 'Height'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final base = double.tryParse(baseController.text) ?? 0;
                final height = double.tryParse(heightController.text) ?? 0;
                context.read<AreaOfTriangleCubit>().calculate(base, height);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaOfTriangleCubit, double>(
              builder: (context, area) {
                return Text(
                  'Area of Triangle: $area',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
