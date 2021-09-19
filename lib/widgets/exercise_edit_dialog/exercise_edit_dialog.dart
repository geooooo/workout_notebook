import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';
import 'package:workout_notebook/models/exercise/muscle_group_type.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/actions/actions.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/models/exercise_edit_dialog_state/exercise_edit_dialog_state.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/services/exercise_edit_dialog_store_factory.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/widgets/footer_widget.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/widgets/header_widget.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/widgets/muscle_group_picker_widget.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/widgets/title_field_widget.dart';
import 'package:workout_notebook/widgets/exercise_edit_dialog/widgets/weight_type_switcher_widget.dart';

Future<void> showExerciseEditDialog(
  BuildContext context, {
  Exercise? exercise,
  required void Function(Exercise) onSave,
  required void Function() onCancel,
}) => showCupertinoDialog(
  context: context,
  builder: (BuildContext context) => _ExerciseEditDialogWidget(
    exercise ?? Exercise(), 
    onSave,
    onCancel,
  ),
);

class _ExerciseEditDialogWidget extends StatelessWidget {
  late final Store<ExerciseEditDialogState> _store;

  _ExerciseEditDialogWidget(
    Exercise exercise,
    void Function(Exercise) onSave,
    void Function() onCancel,
  ) {
    _store = ExerciseCreationDialogStoreFactory.create();
    _store.dispatch(InitAction(exercise, onSave, onCancel));
  }
  
  @override
  Widget build(BuildContext context) => StoreProvider(
    store: _store, 
    child: LayoutBuilder(
      builder: (context, constraints) => Center(
        child: CupertinoPopupSurface(
          child: SizedBox(
            width: constraints.maxWidth - 40,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: _buildContentWidget(),
              ), 
            ),
          ),
        ),
      ),
    ),
  );

  Widget _buildContentWidget() => StoreBuilder(
    builder: (context, Store<ExerciseEditDialogState> store) => Column(
      children: [
        const HeaderWidget(),
        const SizedBox(height: 40),
        TitleFieldWidget(
          title: store.state.exercise.title,
          onChanged: (title) => _onTitleChanged(title, store),
        ),
        const SizedBox(height: 20),
        MuscleGroupPickerWidget(
          muscleGroupType: store.state.exercise.muscleGroupType,
          onChanged: (type) => _onMuscleGroupChanged(type, store),
        ),
        const SizedBox(height: 20),
        WeightTypeSwitcherWidget(
          isChecked: store.state.exercise.hasAdditionalWeight,
          onChanged: (isChecked) => _onWeightTypeSwitcherChanged(isChecked, store),
        ),
        const SizedBox(height: 40),
        FooterWidget(
          onSavePressed: () => _onSavePressed(store),
          onCancelPressed: () => _onCancelPressed(store),
        ),
      ],
    ),
  );

  void _onTitleChanged(String title, Store<ExerciseEditDialogState> store) =>
    store.dispatch(TitleChangedAction(title));

  void _onMuscleGroupChanged(MuscleGroupType type, Store<ExerciseEditDialogState> store) =>
    store.dispatch(MuscleGroupChangedAction(type));

  void _onWeightTypeSwitcherChanged(bool isChecked, Store<ExerciseEditDialogState> store) =>
    store.dispatch(WeightTypeChangedAction(isChecked));

  void _onSavePressed(Store<ExerciseEditDialogState> store) =>
    store.dispatch(const SaveAction());

  void _onCancelPressed(Store<ExerciseEditDialogState> store) =>
    store.dispatch(const CancelAction());
}