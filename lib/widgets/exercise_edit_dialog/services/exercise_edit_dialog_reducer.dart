import 'package:redux/redux.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/actions/actions.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/exercise_edit_dialog_state/exercise_edit_dialog_state.dart';

class ExerciseEditDialogReducer {
  Reducer<ExerciseEditDialogState> get reducer => combineReducers([
    TypedReducer(_initAction),
    TypedReducer(_titleChanged),
    TypedReducer(_muscleGroupChanged),
    TypedReducer(_weightTypeChanged),
  ]);

  ExerciseEditDialogState _initAction(
    ExerciseEditDialogState state, 
    InitAction action,
  ) => state.rebuild((b) => b
    ..exercise.replace(action.exercise)
    ..onSave = action.onSave
    ..onCancel = action.onCancel
  );

  ExerciseEditDialogState _titleChanged(
    ExerciseEditDialogState state, 
    TitleChangedAction action,
  ) => state.rebuild((b) => b
    ..exercise.title = action.title
  );

  ExerciseEditDialogState _muscleGroupChanged(
    ExerciseEditDialogState state, 
    MuscleGroupChangedAction action,
  ) => state.rebuild((b) => b
    ..exercise.muscleGroupType = action.type
  );

  ExerciseEditDialogState _weightTypeChanged(
    ExerciseEditDialogState state, 
    WeightTypeChangedAction action,
  ) => state.rebuild((b) => b
    ..exercise.hasAdditionalWeight = action.hasAdditionalWeight
  );
}