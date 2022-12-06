part of 'show_student_list_bloc.dart';

@freezed
class ShowStudentListState with _$ShowStudentListState {
  const factory ShowStudentListState({
 
    required final List<StudentModel> studentModelList,
  }) =_ShowStudentListState;

  factory ShowStudentListState.initial() => const ShowStudentListState(
        studentModelList: []
      );
}
