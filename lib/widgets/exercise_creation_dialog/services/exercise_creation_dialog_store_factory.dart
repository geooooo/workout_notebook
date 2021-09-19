import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/models/exercise_creation_dialog_state/exercise_creation_dialog_state.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/services/exercise_creation_dialog_effects.dart';
import 'package:workout_notebook/widgets/exercise_creation_dialog/services/exercise_creation_dialog_reducer.dart';

class ExerciseCreationDialogStoreFactory {
  static Store<ExerciseCreationDialogState> create() => Store<ExerciseCreationDialogState>(
    ExerciseCreationDialogReducer().reducer,
    initialState: ExerciseCreationDialogState(),
    middleware: [
      EpicMiddleware(ExerciseCreationDialogEffects().effects, supportAsyncGenerators: false),
    ],
    distinct: true,
    syncStream: true,
  );
}