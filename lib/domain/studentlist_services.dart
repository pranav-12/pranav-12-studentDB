import 'package:student_db_using_bloc/domain/models/student_model.dart';

abstract class StudentListServices {
  Future<void> addStudent(StudentModel value);
  Future<void> getAllStudent();
  Future<StudentModel> deleteStudent();
  Future<StudentModel> updateStudent();
}
