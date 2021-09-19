import 'package:built_value/built_value.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';

part 'exercise_edit_dialog_state.g.dart';

abstract class ExerciseEditDialogState implements Built<ExerciseEditDialogState, ExerciseEditDialogStateBuilder> {
  void Function(Exercise) get onSave;
  void Function() get onCancel;
  Exercise get exercise;

  ExerciseEditDialogState._();

  factory ExerciseEditDialogState() => _$ExerciseEditDialogState((b) => b
    ..onSave = (_) {}
    ..onCancel = () {}
    ..exercise.replace(Exercise())
  );
}