import 'package:block_starter/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleCubitView extends StatelessWidget {
  const AreaOfCircleCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final radiusController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: 'Radius'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final radius = double.tryParse(radiusController.text) ?? 0;
                context.read<AreaOfCircleCubit>().calculate(radius);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaOfCircleCubit, double>(
              builder: (context, area) {
                return Text('Area of Circle: $area',
                    style: const TextStyle(fontSize: 20));
              },
            ),
          ],
        ),
      ),
    );
  }
}
