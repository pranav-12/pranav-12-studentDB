// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/bloc/show_student_list_bloc.dart' as _i5;
import '../../infrastructure/addfunction.dart' as _i4;
import '../studentlist_services.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.StudentListServices>(() => _i4.AddFuctionForHive());
  gh.factory<_i5.ShowStudentListBloc>(() =>
      _i5.ShowStudentListBloc(studentService: get<_i3.StudentListServices>()));
  return get;
}
