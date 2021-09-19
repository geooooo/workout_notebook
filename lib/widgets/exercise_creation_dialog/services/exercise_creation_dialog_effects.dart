import 'package:redux_epics/redux_epics.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/models/actions/actions.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/models/exercise_creation_dialog_state/exercise_creation_dialog_state.dart';

class ExerciseCreationDialogEffects {
  Epic<ExerciseCreationDialogState> get effects => combineEpics([
    TypedEpic(_onSave),
    TypedEpic(_onCancel),
  ]);

  Stream<void> _onSave(Stream<SaveAction> actions, EpicStore<ExerciseCreationDialogState> store) =>
    actions.asyncExpand((action) async* {
       store.state.onSave(store.state.newExercise);
    });

  Stream<void> _onCancel(Stream<CancelAction> actions, EpicStore<ExerciseCreationDialogState> store) =>
    actions.asyncExpand((action) async* { 
      store.state.onCancel(); 
    });
}