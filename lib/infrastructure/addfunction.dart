import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../domain/models/student_model.dart';
import '../domain/studentlist_services.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

@LazySingleton(as: StudentListServices)
class AddFuctionForHive implements StudentListServices {
  @override
  Future<void> addStudent(StudentModel value) async {
    final studentDB = await Hive.openBox<StudentModel>("student_DB");
    await studentDB.add(value);
    print(value.name);
    print("DB: ${studentDB.values}");
    studentListNotifier.value.add(value);

    print(studentListNotifier.value);
    studentListNotifier.notifyListeners();
  }

  @override
  Future<StudentModel> deleteStudent() {
    // TODO: implement deleteStudent
    throw UnimplementedError();
  }

  @override
  Future<void> getAllStudent() async{
   final studentDB = await Hive.openBox<StudentModel>('student_DB');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
  }

  @override
  Future<StudentModel> updateStudent() {
    // TODO: implement updateStudent
    throw UnimplementedError();
  }
}
