import 'package:hive_flutter/adapters.dart';
 part 'student_model.g.dart';

@HiveType(typeId: 1)
class StudentModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String age;
  @HiveField(3)
  String emailId;
  @HiveField(4)
  String mobileNumber;

  StudentModel(
       {required this.id,
      required this.name,
      required this.age,
      required this.emailId,
      required this.mobileNumber});
}
