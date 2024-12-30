import 'package:block_starter/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubitView extends StatelessWidget {
  const DashboardCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: GridView(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {
                  context.read<DashboardCubit>().openCounterView(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.add, size: 48),
                    Text('Counter Cubit'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context.read<DashboardCubit>().openArtithemeticView(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.calculate, size: 48),
                    Text('Arithmetic Cubit'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context.read<DashboardCubit>().openAreaOfCircleView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.circle, size: 48),
                    Text('Area of Circle'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context
                      .read<DashboardCubit>()
                      .openAreaOfTriangleView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.change_history_sharp, size: 48),
                    Text('Area of triangle'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context.read<DashboardCubit>().openStudentView(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.person, size: 48),
                    Text('Student Cubit'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context
                      .read<DashboardCubit>()
                      .openSimpleInterestView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.interests_rounded, size: 48),
                    Text('Simple Interest'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context
                      .read<DashboardCubit>()
                      .openSimpleInterestView(context);
                  // .openCounterBlockView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.interests_rounded, size: 48),
                    Text('Student Block'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context
                      .read<DashboardCubit>()
                      .openSimpleInterestView(context);
                  // .openCounterBlockView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.calculate, size: 48),
                    Text('Arithmetic Block'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  context
                      .read<DashboardCubit>()
                      .openSimpleInterestView(context);
                  // .openCounterBlockView(context);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person, size: 48),
                    Text('Counter Block'),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
