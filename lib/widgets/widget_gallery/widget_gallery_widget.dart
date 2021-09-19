import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/exercise/exercise.dart';
import 'package:workout_notebook/models/exercise/muscle_group_type.dart';
import 'package:workout_notebook/models/strings.dart' as strings;
import 'package:workout_notebook/widgets/exercise_edit_dialog/exercise_edit_dialog.dart';
import 'package:workout_notebook/widgets/exercise_delete_dialog/exercise_delete_dialog_widget.dart';

class WidgetGalleryWidget extends StatelessWidget {
  const WidgetGalleryWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
    navigationBar: const CupertinoNavigationBar(
      middle: Text(strings.widgetGalleryText),
    ),
    child: Builder(
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoButton(
                  child: const Text('Создать упражнение'), 
                  onPressed: () => _onCreateExerciseClick(context),
                ),
                CupertinoButton(
                  child: const Text('Редактировать упражнение'), 
                  onPressed: () => _onEditExerciseClick(context),
                ),
                _buildDividerWidget(),
                CupertinoButton(
                  child: const Text('Удалить упражнение'), 
                  onPressed: () => _onDeleteExerciseClick(context),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Widget _buildDividerWidget() => Container(
    color: const Color.fromRGBO(0, 0, 0, 0.1),
    height: 1,
  );

  Future<void> _onCreateExerciseClick(BuildContext context) =>
    showExerciseEditDialog(
      context, 
      onSave: (Exercise exercise) {
        print(exercise);
        Navigator.of(context).pop();
      }, 
      onCancel: () {
        Navigator.of(context).pop();
      },
    );

  Future<void> _onDeleteExerciseClick(BuildContext context) =>
    showExerciseDeleteDialog(
      context, 
      onConfirm: () {
        Navigator.of(context).pop();
      },
      onCancel: () {
        Navigator.of(context).pop();
      },
    );

  Future<void> _onEditExerciseClick(BuildContext context) =>
    showExerciseEditDialog(
      context, 
      exercise: Exercise(
        hasAdditionalWeight: true,
        muscleGroupType: MuscleGroupType.back,
        title: 'Становая тяга',
      ),
      onSave: (Exercise exercise) {
        print(exercise);
        Navigator.of(context).pop();
      }, 
      onCancel: () {
        Navigator.of(context).pop();
      },
    );
}