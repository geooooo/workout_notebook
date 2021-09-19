import 'package:built_value/built_value.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';

part 'exercise_creation_dialog_state.g.dart';

abstract class ExerciseCreationDialogState implements Built<ExerciseCreationDialogState, ExerciseCreationDialogStateBuilder> {
  void Function(Exercise) get onSave;
  void Function() get onCancel;
  Exercise get newExercise;

  ExerciseCreationDialogState._();

  factory ExerciseCreationDialogState({
    Exercise? newExercise ,
  }) => _$ExerciseCreationDialogState((b) => b
    ..onSave = (_) {}
    ..onCancel = () {}
    ..newExercise.replace(Exercise())
  );
}