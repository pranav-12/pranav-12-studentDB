part of 'show_student_list_bloc.dart';

@freezed
class ShowStudentListEvent with _$ShowStudentListEvent {
  const factory ShowStudentListEvent.addStudentEvent({
    required StudentModel studentModel,
  }) = AddStudentEvent;
  const factory ShowStudentListEvent.getStudentEvent() = GetStudentEvent;
  // const factory ShowStudentListEvent.deleteStudentEvent() = DeleteStudentEvent;
  // const factory ShowStudentListEvent.upDateStudentEvent() = UpDateStudentEvent;
}
