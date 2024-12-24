import 'package:block_starter/model/student_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentState.initial());

  void addStudent(StudentModel student) {
    emit(state.copyWith(isLoading: true));

    Future.delayed(Duration(seconds: 1), () {
      emit(
        state.copyWith(
          lstStudents: state.lstStudents..add(student),
          isLoading: false,
        ),
      );
    });
  }

  void deleteStudent(int index) {
    emit(state.copyWith(isLoading: true));

    Future.delayed(Duration(seconds: 1), () {
      emit(
        state.copyWith(
          lstStudents: state.lstStudents..removeAt(index),
          isLoading: false,
        ),
      );
    });
  }
}
