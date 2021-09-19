// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkoutSchema extends WorkoutSchema {
  @override
  final BuiltList<Exercise> exercises;
  @override
  final BuiltMap<Exercise, int> exerciseBySteps;

  factory _$WorkoutSchema([void Function(WorkoutSchemaBuilder)? updates]) =>
      (new WorkoutSchemaBuilder()..update(updates)).build();

  _$WorkoutSchema._({required this.exercises, required this.exerciseBySteps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exercises, 'WorkoutSchema', 'exercises');
    BuiltValueNullFieldError.checkNotNull(
        exerciseBySteps, 'WorkoutSchema', 'exerciseBySteps');
  }

  @override
  WorkoutSchema rebuild(void Function(WorkoutSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkoutSchemaBuilder toBuilder() => new WorkoutSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkoutSchema &&
        exercises == other.exercises &&
        exerciseBySteps == other.exerciseBySteps;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, exercises.hashCode), exerciseBySteps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkoutSchema')
          ..add('exercises', exercises)
          ..add('exerciseBySteps', exerciseBySteps))
        .toString();
  }
}

class WorkoutSchemaBuilder
    implements Builder<WorkoutSchema, WorkoutSchemaBuilder> {
  _$WorkoutSchema? _$v;

  ListBuilder<Exercise>? _exercises;
  ListBuilder<Exercise> get exercises =>
      _$this._exercises ??= new ListBuilder<Exercise>();
  set exercises(ListBuilder<Exercise>? exercises) =>
      _$this._exercises = exercises;

  MapBuilder<Exercise, int>? _exerciseBySteps;
  MapBuilder<Exercise, int> get exerciseBySteps =>
      _$this._exerciseBySteps ??= new MapBuilder<Exercise, int>();
  set exerciseBySteps(MapBuilder<Exercise, int>? exerciseBySteps) =>
      _$this._exerciseBySteps = exerciseBySteps;

  WorkoutSchemaBuilder();

  WorkoutSchemaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exercises = $v.exercises.toBuilder();
      _exerciseBySteps = $v.exerciseBySteps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkoutSchema other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkoutSchema;
  }

  @override
  void update(void Function(WorkoutSchemaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkoutSchema build() {
    _$WorkoutSchema _$result;
    try {
      _$result = _$v ??
          new _$WorkoutSchema._(
              exercises: exercises.build(),
              exerciseBySteps: exerciseBySteps.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exercises';
        exercises.build();
        _$failedField = 'exerciseBySteps';
        exerciseBySteps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkoutSchema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
