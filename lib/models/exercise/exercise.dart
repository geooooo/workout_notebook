import 'package:built_value/built_value.dart';
import 'package:workout_notebook/models/exercise/muscle_group_type.dart';

part 'exercise.g.dart';

abstract class Exercise implements Built<Exercise, ExerciseBuilder> {
  String get title;
  MuscleGroupType get muscleGroupType;
  bool get hasAdditionalWeight;

  Exercise._();

  factory Exercise({
    MuscleGroupType? muscleGroupType,
    String title = '',
    bool hasAdditionalWeight = false,
  }) => _$Exercise((b) => b
    ..title = title
    ..muscleGroupType = muscleGroupType ?? MuscleGroupType.values.first
    ..hasAdditionalWeight = hasAdditionalWeight
  );
}