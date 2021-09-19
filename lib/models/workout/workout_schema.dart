import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';

part 'workout_schema.g.dart';

abstract class WorkoutSchema implements Built<WorkoutSchema, WorkoutSchemaBuilder> {
  BuiltList<Exercise> get exercises;
  BuiltMap<Exercise, int> get exerciseBySteps;

  WorkoutSchema._();

  factory WorkoutSchema({
    required List<Exercise> exercises,
    required Map<Exercise, int> exerciseBySteps,
  }) => _$WorkoutSchema((b) => b
    ..exercises.replace(exercises)
    ..exerciseBySteps.replace(exerciseBySteps)
  );
}