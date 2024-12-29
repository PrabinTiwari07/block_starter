import 'package:bloc/bloc.dart';

class AreaOfCircleCubit extends Cubit<double> {
  AreaOfCircleCubit() : super(0.0);

  void calculate(double radius) {
    double area = 3.14159 * radius * radius;
    emit(area);
  }
}
