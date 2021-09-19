import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/exercise_edit_dialog_state/exercise_edit_dialog_state.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/services/exercise_edit_dialog_effects.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/services/exercise_edit_dialog_reducer.dart';

class ExerciseCreationDialogStoreFactory {
  static Store<ExerciseEditDialogState> create() => Store<ExerciseEditDialogState>(
    ExerciseEditDialogReducer().reducer,
    initialState: ExerciseEditDialogState(),
    middleware: [
      EpicMiddleware(ExerciseEditDialogEffects().effects, supportAsyncGenerators: false),
    ],
    distinct: true,
    syncStream: true,
  );
}