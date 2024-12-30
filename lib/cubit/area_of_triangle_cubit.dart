import 'package:bloc/bloc.dart';

class AreaOfTriangleCubit extends Cubit<double> {
  AreaOfTriangleCubit() : super(0.0);

  void calculate(double base, double height) {
    double area = 1 / 2 * base * height;
    emit(area);
  }
}
