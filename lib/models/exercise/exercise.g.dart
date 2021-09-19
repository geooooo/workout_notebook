// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Exercise extends Exercise {
  @override
  final String title;
  @override
  final MuscleGroupType muscleGroupType;
  @override
  final bool hasAdditionalWeight;

  factory _$Exercise([void Function(ExerciseBuilder)? updates]) =>
      (new ExerciseBuilder()..update(updates)).build();

  _$Exercise._(
      {required this.title,
      required this.muscleGroupType,
      required this.hasAdditionalWeight})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'Exercise', 'title');
    BuiltValueNullFieldError.checkNotNull(
        muscleGroupType, 'Exercise', 'muscleGroupType');
    BuiltValueNullFieldError.checkNotNull(
        hasAdditionalWeight, 'Exercise', 'hasAdditionalWeight');
  }

  @override
  Exercise rebuild(void Function(ExerciseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseBuilder toBuilder() => new ExerciseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exercise &&
        title == other.title &&
        muscleGroupType == other.muscleGroupType &&
        hasAdditionalWeight == other.hasAdditionalWeight;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), muscleGroupType.hashCode),
        hasAdditionalWeight.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Exercise')
          ..add('title', title)
          ..add('muscleGroupType', muscleGroupType)
          ..add('hasAdditionalWeight', hasAdditionalWeight))
        .toString();
  }
}

class ExerciseBuilder implements Builder<Exercise, ExerciseBuilder> {
  _$Exercise? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  MuscleGroupType? _muscleGroupType;
  MuscleGroupType? get muscleGroupType => _$this._muscleGroupType;
  set muscleGroupType(MuscleGroupType? muscleGroupType) =>
      _$this._muscleGroupType = muscleGroupType;

  bool? _hasAdditionalWeight;
  bool? get hasAdditionalWeight => _$this._hasAdditionalWeight;
  set hasAdditionalWeight(bool? hasAdditionalWeight) =>
      _$this._hasAdditionalWeight = hasAdditionalWeight;

  ExerciseBuilder();

  ExerciseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _muscleGroupType = $v.muscleGroupType;
      _hasAdditionalWeight = $v.hasAdditionalWeight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exercise other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Exercise;
  }

  @override
  void update(void Function(ExerciseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Exercise build() {
    final _$result = _$v ??
        new _$Exercise._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Exercise', 'title'),
            muscleGroupType: BuiltValueNullFieldError.checkNotNull(
                muscleGroupType, 'Exercise', 'muscleGroupType'),
            hasAdditionalWeight: BuiltValueNullFieldError.checkNotNull(
                hasAdditionalWeight, 'Exercise', 'hasAdditionalWeight'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
