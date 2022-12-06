import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student_db_using_bloc/domain/studentlist_services.dart';
import 'package:student_db_using_bloc/infrastructure/addfunction.dart';

import '../../domain/models/student_model.dart';
import '../../presentation/screen_add_list.dart';

part 'show_student_list_event.dart';
part 'show_student_list_state.dart';
part 'show_student_list_bloc.freezed.dart';

@injectable
class ShowStudentListBloc
    extends Bloc<ShowStudentListEvent, ShowStudentListState> {
  final StudentListServices studentService;

  ShowStudentListBloc({required this.studentService})
      : super(ShowStudentListState.initial()) {
    on<AddStudentEvent>(
      (event, emit) async {
        await AddFuctionForHive().addStudent(event.studentModel);
        print('object-1');
        emit(ShowStudentListState(studentModelList: studentListNotifier.value));
      },
    );

    on<GetStudentEvent>((event, emit) async{
      await AddFuctionForHive().getAllStudent();
      emit(state.copyWith(studentModelList: studentListNotifier.value));
    });
  }
}
