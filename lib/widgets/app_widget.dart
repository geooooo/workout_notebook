import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/app_routes.dart' as app_routes;
import 'package:workout_notebook/models/exercise/exercise.dart';
import 'package:workout_notebook/models/strings.dart' as strings;
import 'package:workout_notebook/widgets/exercise_creation_dialog/exercise_creation_dialog.dart';
import 'package:workout_notebook/widgets/exercise_delete_dialog/exercise_delete_dialog_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoApp(
    debugShowCheckedModeBanner: false,
    theme: const CupertinoThemeData(brightness: Brightness.light),
    routes: app_routes.routes,
    title: strings.workoutNotebookText,
    home: CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(strings.workoutNotebookText),
      ),
      child: Builder(
        builder: (BuildContext context) => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CupertinoButton(
                  child: const Text('Создать упражнение'), 
                  onPressed: () => _onCreateExerciseClick(context),
                ),
                CupertinoButton(
                  child: const Text('Удалить упражнение'), 
                  onPressed: () => _onDeleteExerciseClick(context),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Future<void> _onCreateExerciseClick(BuildContext context) =>
    showExerciseCreationDialog(
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
}