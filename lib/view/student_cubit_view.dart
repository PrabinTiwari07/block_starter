import 'package:block_starter/cubit/student_cubit.dart';
import 'package:block_starter/model/student_model.dart';
import 'package:block_starter/state/student_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentCubitView extends StatelessWidget {
  StudentCubitView({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();

  final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Cubit'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey2,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an age';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              BlocBuilder<StudentCubit, StudentState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            if (_formKey2.currentState!.validate()) {
                              StudentModel student = StudentModel(
                                name: _nameController.text,
                                age: int.parse(_ageController.text),
                                address: _addressController.text,
                              );
                              context.read<StudentCubit>().addStudent(student);
                              _nameController.clear();
                              _ageController.clear();
                              _addressController.clear();
                            }
                          },
                    child: state.isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Submit'),
                  );
                },
              ),
              const SizedBox(height: 8),
              Expanded(
                child: BlocBuilder<StudentCubit, StudentState>(
                  builder: (context, state) {
                    if (state.isLoading && state.lstStudents.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state.lstStudents.isEmpty) {
                      return const Center(child: Text('No students added yet'));
                    } else {
                      return ListView.builder(
                        itemCount: state.lstStudents.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(state.lstStudents[index].name),
                            subtitle:
                                Text(state.lstStudents[index].age.toString()),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                context
                                    .read<StudentCubit>()
                                    .deleteStudent(index);
                              },
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
