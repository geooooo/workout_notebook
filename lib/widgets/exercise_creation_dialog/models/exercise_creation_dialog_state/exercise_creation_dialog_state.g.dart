// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_creation_dialog_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExerciseCreationDialogState extends ExerciseCreationDialogState {
  @override
  final void Function(Exercise) onSave;
  @override
  final void Function() onCancel;
  @override
  final Exercise newExercise;

  factory _$ExerciseCreationDialogState(
          [void Function(ExerciseCreationDialogStateBuilder)? updates]) =>
      (new ExerciseCreationDialogStateBuilder()..update(updates)).build();

  _$ExerciseCreationDialogState._(
      {required this.onSave, required this.onCancel, required this.newExercise})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onSave, 'ExerciseCreationDialogState', 'onSave');
    BuiltValueNullFieldError.checkNotNull(
        onCancel, 'ExerciseCreationDialogState', 'onCancel');
    BuiltValueNullFieldError.checkNotNull(
        newExercise, 'ExerciseCreationDialogState', 'newExercise');
  }

  @override
  ExerciseCreationDialogState rebuild(
          void Function(ExerciseCreationDialogStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseCreationDialogStateBuilder toBuilder() =>
      new ExerciseCreationDialogStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is ExerciseCreationDialogState &&
        onSave == _$dynamicOther.onSave &&
        onCancel == _$dynamicOther.onCancel &&
        newExercise == other.newExercise;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, onSave.hashCode), onCancel.hashCode), newExercise.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExerciseCreationDialogState')
          ..add('onSave', onSave)
          ..add('onCancel', onCancel)
          ..add('newExercise', newExercise))
        .toString();
  }
}

class ExerciseCreationDialogStateBuilder
    implements
        Builder<ExerciseCreationDialogState,
            ExerciseCreationDialogStateBuilder> {
  _$ExerciseCreationDialogState? _$v;

  void Function(Exercise)? _onSave;
  void Function(Exercise)? get onSave => _$this._onSave;
  set onSave(void Function(Exercise)? onSave) => _$this._onSave = onSave;

  void Function()? _onCancel;
  void Function()? get onCancel => _$this._onCancel;
  set onCancel(void Function()? onCancel) => _$this._onCancel = onCancel;

  ExerciseBuilder? _newExercise;
  ExerciseBuilder get newExercise =>
      _$this._newExercise ??= new ExerciseBuilder();
  set newExercise(ExerciseBuilder? newExercise) =>
      _$this._newExercise = newExercise;

  ExerciseCreationDialogStateBuilder();

  ExerciseCreationDialogStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onSave = $v.onSave;
      _onCancel = $v.onCancel;
      _newExercise = $v.newExercise.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseCreationDialogState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseCreationDialogState;
  }

  @override
  void update(void Function(ExerciseCreationDialogStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExerciseCreationDialogState build() {
    _$ExerciseCreationDialogState _$result;
    try {
      _$result = _$v ??
          new _$ExerciseCreationDialogState._(
              onSave: BuiltValueNullFieldError.checkNotNull(
                  onSave, 'ExerciseCreationDialogState', 'onSave'),
              onCancel: BuiltValueNullFieldError.checkNotNull(
                  onCancel, 'ExerciseCreationDialogState', 'onCancel'),
              newExercise: newExercise.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newExercise';
        newExercise.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExerciseCreationDialogState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
