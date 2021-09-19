import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

Future<void> showExerciseDeleteDialog(
  BuildContext context, {
  required void Function() onConfirm,
  required void Function() onCancel,
}) => showCupertinoDialog(
  context: context,
  builder: (BuildContext context) => _ExerciseDeleteDialogWidget(onConfirm, onCancel),
);

class _ExerciseDeleteDialogWidget extends StatelessWidget {
  final void Function() onConfirm;
  final void Function() onCancel;

  const _ExerciseDeleteDialogWidget(
    this.onConfirm,
    this.onCancel, {
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoAlertDialog(
    title: const Text(strings.deleteDialogText + '?'),
    actions: [
      CupertinoDialogAction(
        isDestructiveAction: true,
        isDefaultAction: true,
        child: const Text(strings.deleteText),
        onPressed: onConfirm,
      ),
      CupertinoDialogAction(
        child: const Text(strings.cancelText),
        onPressed: onCancel,
      ),
    ],
  );
}