// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_student_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowStudentListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) addStudentEvent,
    required TResult Function() getStudentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel studentModel)? addStudentEvent,
    TResult? Function()? getStudentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? addStudentEvent,
    TResult Function()? getStudentEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentEvent value) addStudentEvent,
    required TResult Function(GetStudentEvent value) getStudentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentEvent value)? addStudentEvent,
    TResult? Function(GetStudentEvent value)? getStudentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentEvent value)? addStudentEvent,
    TResult Function(GetStudentEvent value)? getStudentEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowStudentListEventCopyWith<$Res> {
  factory $ShowStudentListEventCopyWith(ShowStudentListEvent value,
          $Res Function(ShowStudentListEvent) then) =
      _$ShowStudentListEventCopyWithImpl<$Res, ShowStudentListEvent>;
}

/// @nodoc
class _$ShowStudentListEventCopyWithImpl<$Res,
        $Val extends ShowStudentListEvent>
    implements $ShowStudentListEventCopyWith<$Res> {
  _$ShowStudentListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStudentEventCopyWith<$Res> {
  factory _$$AddStudentEventCopyWith(
          _$AddStudentEvent value, $Res Function(_$AddStudentEvent) then) =
      __$$AddStudentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel studentModel});
}

/// @nodoc
class __$$AddStudentEventCopyWithImpl<$Res>
    extends _$ShowStudentListEventCopyWithImpl<$Res, _$AddStudentEvent>
    implements _$$AddStudentEventCopyWith<$Res> {
  __$$AddStudentEventCopyWithImpl(
      _$AddStudentEvent _value, $Res Function(_$AddStudentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModel = null,
  }) {
    return _then(_$AddStudentEvent(
      studentModel: null == studentModel
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudentEvent implements AddStudentEvent {
  const _$AddStudentEvent({required this.studentModel});

  @override
  final StudentModel studentModel;

  @override
  String toString() {
    return 'ShowStudentListEvent.addStudentEvent(studentModel: $studentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentEvent &&
            (identical(other.studentModel, studentModel) ||
                other.studentModel == studentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentEventCopyWith<_$AddStudentEvent> get copyWith =>
      __$$AddStudentEventCopyWithImpl<_$AddStudentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) addStudentEvent,
    required TResult Function() getStudentEvent,
  }) {
    return addStudentEvent(studentModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel studentModel)? addStudentEvent,
    TResult? Function()? getStudentEvent,
  }) {
    return addStudentEvent?.call(studentModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? addStudentEvent,
    TResult Function()? getStudentEvent,
    required TResult orElse(),
  }) {
    if (addStudentEvent != null) {
      return addStudentEvent(studentModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentEvent value) addStudentEvent,
    required TResult Function(GetStudentEvent value) getStudentEvent,
  }) {
    return addStudentEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentEvent value)? addStudentEvent,
    TResult? Function(GetStudentEvent value)? getStudentEvent,
  }) {
    return addStudentEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentEvent value)? addStudentEvent,
    TResult Function(GetStudentEvent value)? getStudentEvent,
    required TResult orElse(),
  }) {
    if (addStudentEvent != null) {
      return addStudentEvent(this);
    }
    return orElse();
  }
}

abstract class AddStudentEvent implements ShowStudentListEvent {
  const factory AddStudentEvent({required final StudentModel studentModel}) =
      _$AddStudentEvent;

  StudentModel get studentModel;
  @JsonKey(ignore: true)
  _$$AddStudentEventCopyWith<_$AddStudentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStudentEventCopyWith<$Res> {
  factory _$$GetStudentEventCopyWith(
          _$GetStudentEvent value, $Res Function(_$GetStudentEvent) then) =
      __$$GetStudentEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStudentEventCopyWithImpl<$Res>
    extends _$ShowStudentListEventCopyWithImpl<$Res, _$GetStudentEvent>
    implements _$$GetStudentEventCopyWith<$Res> {
  __$$GetStudentEventCopyWithImpl(
      _$GetStudentEvent _value, $Res Function(_$GetStudentEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStudentEvent implements GetStudentEvent {
  const _$GetStudentEvent();

  @override
  String toString() {
    return 'ShowStudentListEvent.getStudentEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStudentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) addStudentEvent,
    required TResult Function() getStudentEvent,
  }) {
    return getStudentEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel studentModel)? addStudentEvent,
    TResult? Function()? getStudentEvent,
  }) {
    return getStudentEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? addStudentEvent,
    TResult Function()? getStudentEvent,
    required TResult orElse(),
  }) {
    if (getStudentEvent != null) {
      return getStudentEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentEvent value) addStudentEvent,
    required TResult Function(GetStudentEvent value) getStudentEvent,
  }) {
    return getStudentEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentEvent value)? addStudentEvent,
    TResult? Function(GetStudentEvent value)? getStudentEvent,
  }) {
    return getStudentEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentEvent value)? addStudentEvent,
    TResult Function(GetStudentEvent value)? getStudentEvent,
    required TResult orElse(),
  }) {
    if (getStudentEvent != null) {
      return getStudentEvent(this);
    }
    return orElse();
  }
}

abstract class GetStudentEvent implements ShowStudentListEvent {
  const factory GetStudentEvent() = _$GetStudentEvent;
}

/// @nodoc
mixin _$ShowStudentListState {
  List<StudentModel> get studentModelList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowStudentListStateCopyWith<ShowStudentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowStudentListStateCopyWith<$Res> {
  factory $ShowStudentListStateCopyWith(ShowStudentListState value,
          $Res Function(ShowStudentListState) then) =
      _$ShowStudentListStateCopyWithImpl<$Res, ShowStudentListState>;
  @useResult
  $Res call({List<StudentModel> studentModelList});
}

/// @nodoc
class _$ShowStudentListStateCopyWithImpl<$Res,
        $Val extends ShowStudentListState>
    implements $ShowStudentListStateCopyWith<$Res> {
  _$ShowStudentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModelList = null,
  }) {
    return _then(_value.copyWith(
      studentModelList: null == studentModelList
          ? _value.studentModelList
          : studentModelList // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowStudentListStateCopyWith<$Res>
    implements $ShowStudentListStateCopyWith<$Res> {
  factory _$$_ShowStudentListStateCopyWith(_$_ShowStudentListState value,
          $Res Function(_$_ShowStudentListState) then) =
      __$$_ShowStudentListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StudentModel> studentModelList});
}

/// @nodoc
class __$$_ShowStudentListStateCopyWithImpl<$Res>
    extends _$ShowStudentListStateCopyWithImpl<$Res, _$_ShowStudentListState>
    implements _$$_ShowStudentListStateCopyWith<$Res> {
  __$$_ShowStudentListStateCopyWithImpl(_$_ShowStudentListState _value,
      $Res Function(_$_ShowStudentListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModelList = null,
  }) {
    return _then(_$_ShowStudentListState(
      studentModelList: null == studentModelList
          ? _value._studentModelList
          : studentModelList // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$_ShowStudentListState implements _ShowStudentListState {
  const _$_ShowStudentListState(
      {required final List<StudentModel> studentModelList})
      : _studentModelList = studentModelList;

  final List<StudentModel> _studentModelList;
  @override
  List<StudentModel> get studentModelList {
    if (_studentModelList is EqualUnmodifiableListView)
      return _studentModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentModelList);
  }

  @override
  String toString() {
    return 'ShowStudentListState(studentModelList: $studentModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowStudentListState &&
            const DeepCollectionEquality()
                .equals(other._studentModelList, _studentModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowStudentListStateCopyWith<_$_ShowStudentListState> get copyWith =>
      __$$_ShowStudentListStateCopyWithImpl<_$_ShowStudentListState>(
          this, _$identity);
}

abstract class _ShowStudentListState implements ShowStudentListState {
  const factory _ShowStudentListState(
          {required final List<StudentModel> studentModelList}) =
      _$_ShowStudentListState;

  @override
  List<StudentModel> get studentModelList;
  @override
  @JsonKey(ignore: true)
  _$$_ShowStudentListStateCopyWith<_$_ShowStudentListState> get copyWith =>
      throw _privateConstructorUsedError;
}
