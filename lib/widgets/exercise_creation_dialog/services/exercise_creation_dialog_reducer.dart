import 'package:redux/redux.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/models/actions/actions.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/models/exercise_creation_dialog_state/exercise_creation_dialog_state.dart';

class ExerciseCreationDialogReducer {
  Reducer<ExerciseCreationDialogState> get reducer => combineReducers([
    TypedReducer(_initAction),
    TypedReducer(_titleChanged),
    TypedReducer(_muscleGroupChanged),
    TypedReducer(_weightTypeChanged),
  ]);

  ExerciseCreationDialogState _initAction(
    ExerciseCreationDialogState state, 
    InitAction action,
  ) => state.rebuild((b) => b
    ..onSave = action.onSave
    ..onCancel = action.onCancel
  );

  ExerciseCreationDialogState _titleChanged(
    ExerciseCreationDialogState state, 
    TitleChangedAction action,
  ) => state.rebuild((b) => b
    ..newExercise.title = action.title
  );

  ExerciseCreationDialogState _muscleGroupChanged(
    ExerciseCreationDialogState state, 
    MuscleGroupChangedAction action,
  ) => state.rebuild((b) => b
    ..newExercise.muscleGroupType = action.type
  );

  ExerciseCreationDialogState _weightTypeChanged(
    ExerciseCreationDialogState state, 
    WeightTypeChangedAction action,
  ) => state.rebuild((b) => b
    ..newExercise.hasAdditionalWeight = action.hasAdditionalWeight
  );
}