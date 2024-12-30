import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/simple_interest_cubit.dart';

class SimpleInterestCubitView extends StatelessWidget {
  const SimpleInterestCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final principalController = TextEditingController();
    final rateController = TextEditingController();
    final timeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: principalController,
              decoration: const InputDecoration(labelText: 'Principal Amount'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: rateController,
              decoration: const InputDecoration(labelText: 'Rate of Interest'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: timeController,
              decoration: const InputDecoration(labelText: 'Time (years)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final principal =
                    double.tryParse(principalController.text) ?? 0;
                final rate = double.tryParse(rateController.text) ?? 0;
                final time = double.tryParse(timeController.text) ?? 0;

                context
                    .read<SimpleInterestCubit>()
                    .calculate(principal, rate, time);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<SimpleInterestCubit, double>(
              builder: (context, interest) {
                return Text('Simple Interest: $interest',
                    style: const TextStyle(fontSize: 20));
              },
            ),
          ],
        ),
      ),
    );
  }
}
