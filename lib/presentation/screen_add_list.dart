import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_db_using_bloc/application/bloc/show_student_list_bloc.dart';

import 'package:student_db_using_bloc/presentation/widgets/appbar_widget.dart';

import '../constants/constants.dart';
import '../domain/models/student_model.dart';



class ScreenAddList extends StatelessWidget {
  ScreenAddList({super.key});

  final formkey = GlobalKey<FormState>();
final nameController = TextEditingController();
final ageController = TextEditingController();
final mailIdController = TextEditingController();
final mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// AppBar
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Add Students Details'),
      ),
// Form
      body: Form(
        key: formkey,
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
// for Name
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enater a name';
                } else if (value.length < 4) {
                  return 'name atleast 4 letters';
                } else {
                  return null;
                }
              },
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.allow(RegExp('[a-z,A-Z, ]'))
              ],
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),

            kSizedBoxH20,

//for Age
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enater age';
                } else {
                  return null;
                }
              },
              controller: ageController,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(2),
              ],
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Age'),
              keyboardType: const TextInputType.numberWithOptions(),
            ),

            kSizedBoxH20,

// for EmailId
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enater your mailId';
                } else if (!value.contains(
                  RegExp(
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$"),
                )) {
                  return 'Invalid Id';
                } else {
                  return null;
                }
              },
              controller: mailIdController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Mail Id'),
            ),

            kSizedBoxH20,

// for MobileNumber
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enater your mobileNumber';
                } else if (value.length != 10) {
                  return 'Invalid MobileNumber';
                } else {
                  return null;
                }
              },
              controller: mobileNumberController,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                LengthLimitingTextInputFormatter(10),
              ],
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Mobile Number'),
              keyboardType: const TextInputType.numberWithOptions(),
            ),

            kSizedBoxH20,

// for Add Button
            BlocBuilder<ShowStudentListBloc, ShowStudentListState>(
              builder: (context, state) {
                return elevatedButton(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // if (nameController.text.isEmpty &&
        //     ageController.text.isEmpty &&
        //     mailIdController.text.isEmpty &&
        //     mobileNumberController.text.isEmpty) {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(
        //       backgroundColor: Colors.red,
        //       duration: Duration(seconds: 1),
        //       content: Text(
        //         'Please enter the following Details',
        //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   );
        // } else {
        // if (formkey.currentState!.validate()) {
        final studentDb = StudentModel(
            id: DateTime.now().microsecondsSinceEpoch,
            name: nameController.text,
            age: ageController.text,
            emailId: mailIdController.text,
            mobileNumber: mobileNumberController.text);

        print(nameController.text);
        print(studentDb.name.toString());
        context.read<ShowStudentListBloc>().add(
              AddStudentEvent(studentModel: studentDb),
            );

        // Navigator.of(context).pop();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
            content: Text(
              'Details Added Successfully',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        );
        nameController.clear();
        ageController.clear();
        mailIdController.clear();
        mobileNumberController.clear();
      },
      // },
      // },
      child: const Text('Add Student '),
    );
  }
}
