// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_edit_dialog_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExerciseEditDialogState extends ExerciseEditDialogState {
  @override
  final void Function(Exercise) onSave;
  @override
  final void Function() onCancel;
  @override
  final Exercise exercise;

  factory _$ExerciseEditDialogState(
          [void Function(ExerciseEditDialogStateBuilder)? updates]) =>
      (new ExerciseEditDialogStateBuilder()..update(updates)).build();

  _$ExerciseEditDialogState._(
      {required this.onSave, required this.onCancel, required this.exercise})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onSave, 'ExerciseEditDialogState', 'onSave');
    BuiltValueNullFieldError.checkNotNull(
        onCancel, 'ExerciseEditDialogState', 'onCancel');
    BuiltValueNullFieldError.checkNotNull(
        exercise, 'ExerciseEditDialogState', 'exercise');
  }

  @override
  ExerciseEditDialogState rebuild(
          void Function(ExerciseEditDialogStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseEditDialogStateBuilder toBuilder() =>
      new ExerciseEditDialogStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is ExerciseEditDialogState &&
        onSave == _$dynamicOther.onSave &&
        onCancel == _$dynamicOther.onCancel &&
        exercise == other.exercise;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, onSave.hashCode), onCancel.hashCode), exercise.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExerciseEditDialogState')
          ..add('onSave', onSave)
          ..add('onCancel', onCancel)
          ..add('exercise', exercise))
        .toString();
  }
}

class ExerciseEditDialogStateBuilder
    implements
        Builder<ExerciseEditDialogState, ExerciseEditDialogStateBuilder> {
  _$ExerciseEditDialogState? _$v;

  void Function(Exercise)? _onSave;
  void Function(Exercise)? get onSave => _$this._onSave;
  set onSave(void Function(Exercise)? onSave) => _$this._onSave = onSave;

  void Function()? _onCancel;
  void Function()? get onCancel => _$this._onCancel;
  set onCancel(void Function()? onCancel) => _$this._onCancel = onCancel;

  ExerciseBuilder? _exercise;
  ExerciseBuilder get exercise => _$this._exercise ??= new ExerciseBuilder();
  set exercise(ExerciseBuilder? exercise) => _$this._exercise = exercise;

  ExerciseEditDialogStateBuilder();

  ExerciseEditDialogStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onSave = $v.onSave;
      _onCancel = $v.onCancel;
      _exercise = $v.exercise.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseEditDialogState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseEditDialogState;
  }

  @override
  void update(void Function(ExerciseEditDialogStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExerciseEditDialogState build() {
    _$ExerciseEditDialogState _$result;
    try {
      _$result = _$v ??
          new _$ExerciseEditDialogState._(
              onSave: BuiltValueNullFieldError.checkNotNull(
                  onSave, 'ExerciseEditDialogState', 'onSave'),
              onCancel: BuiltValueNullFieldError.checkNotNull(
                  onCancel, 'ExerciseEditDialogState', 'onCancel'),
              exercise: exercise.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exercise';
        exercise.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExerciseEditDialogState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
