import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:student_db_using_bloc/presentation/screen_add_list.dart';
import 'package:student_db_using_bloc/presentation/widgets/appbar_widget.dart';

import '../application/bloc/show_student_list_bloc.dart';

class ScreenShowList extends StatelessWidget {
  const ScreenShowList({super.key});

  @override
  Widget build(BuildContext context) {
       WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ShowStudentListBloc>().add(const GetStudentEvent());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(title: 'Records', actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ScreenAddList(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ]),
      ),
      body: BlocBuilder<ShowStudentListBloc, ShowStudentListState>(
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final data = state.studentModelList[index];
              return ListTile(
                title: Text(data.name),
                textColor: Colors.blueGrey,
                tileColor: Colors.black12,
                leading: const CircleAvatar(),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: state.studentModelList.length,
          );
        },
      ),
    );
  }
}
