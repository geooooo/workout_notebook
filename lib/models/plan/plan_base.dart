import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';
import 'package:workout_notebook/models/workout/workout_schema.dart';

part 'plan_base.g.dart';

abstract class PlanBase implements Built<PlanBase, PlanBaseBuilder> {
  BuiltList<WorkoutSchema> get workouts;

  PlanBase._();

  factory PlanBase({
    required List<WorkoutSchema> workouts,
    required Map<Exercise, int> exerciseBySteps,
  }) => _$PlanBase((b) => b
    ..workouts.replace(workouts)
  );
}