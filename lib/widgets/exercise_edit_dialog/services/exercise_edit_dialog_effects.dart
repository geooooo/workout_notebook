import 'package:redux_epics/redux_epics.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/actions/actions.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/exercise_edit_dialog_state/exercise_edit_dialog_state.dart';

class ExerciseEditDialogEffects {
  Epic<ExerciseEditDialogState> get effects => combineEpics([
    TypedEpic(_onSave),
    TypedEpic(_onCancel),
  ]);

  Stream<void> _onSave(Stream<SaveAction> actions, EpicStore<ExerciseEditDialogState> store) =>
    actions.asyncExpand((action) async* {
       store.state.onSave(store.state.exercise);
    });

  Stream<void> _onCancel(Stream<CancelAction> actions, EpicStore<ExerciseEditDialogState> store) =>
    actions.asyncExpand((action) async* { 
      store.state.onCancel(); 
    });
}