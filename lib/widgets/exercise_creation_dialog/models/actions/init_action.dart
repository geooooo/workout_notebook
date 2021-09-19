import 'package:workout_notebook/models/exercise/exercise.dart';

class InitAction {
  final void Function(Exercise) onSave;
  final void Function() onCancel;
  
  const InitAction(this.onSave, this.onCancel);
}