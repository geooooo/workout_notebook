import 'package:workout_notebook/models/exercise/exercise.dart';

class InitAction {
  final Exercise exercise;
  final void Function(Exercise) onSave;
  final void Function() onCancel;
  
  const InitAction(
    this.exercise, 
    this.onSave,
    this.onCancel,
  );
}