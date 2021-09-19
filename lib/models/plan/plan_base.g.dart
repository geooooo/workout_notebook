// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlanBase extends PlanBase {
  @override
  final BuiltList<WorkoutSchema> workouts;

  factory _$PlanBase([void Function(PlanBaseBuilder)? updates]) =>
      (new PlanBaseBuilder()..update(updates)).build();

  _$PlanBase._({required this.workouts}) : super._() {
    BuiltValueNullFieldError.checkNotNull(workouts, 'PlanBase', 'workouts');
  }

  @override
  PlanBase rebuild(void Function(PlanBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanBaseBuilder toBuilder() => new PlanBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanBase && workouts == other.workouts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, workouts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlanBase')..add('workouts', workouts))
        .toString();
  }
}

class PlanBaseBuilder implements Builder<PlanBase, PlanBaseBuilder> {
  _$PlanBase? _$v;

  ListBuilder<WorkoutSchema>? _workouts;
  ListBuilder<WorkoutSchema> get workouts =>
      _$this._workouts ??= new ListBuilder<WorkoutSchema>();
  set workouts(ListBuilder<WorkoutSchema>? workouts) =>
      _$this._workouts = workouts;

  PlanBaseBuilder();

  PlanBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workouts = $v.workouts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanBase;
  }

  @override
  void update(void Function(PlanBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlanBase build() {
    _$PlanBase _$result;
    try {
      _$result = _$v ?? new _$PlanBase._(workouts: workouts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workouts';
        workouts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlanBase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
