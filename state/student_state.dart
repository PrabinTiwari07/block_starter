import 'package:block_starter/model/student_model.dart';

class StudentState {
  final List<StudentModel> lststudents;
  final bool isloading;

  const StudentState({
    required this.lststudents,
    required this.isloading,
  });
  factory StudentState.initial() {
    return StudentState(
      lststudents: [],
      isloading: false,
    );
  }
  StudentState copywith({
    List<StudentModel>? lststudents,
    bool? isloading,
  }) {
    return StudentState(
      lststudents: lststudents ?? this.lststudents,
      isloading: isloading ?? this.isloading,
    );
  }
}
