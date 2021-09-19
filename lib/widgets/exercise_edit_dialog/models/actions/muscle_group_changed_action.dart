import 'package:workout_notebook/models/exercise/muscle_group_type.dart';

class MuscleGroupChangedAction {
  final MuscleGroupType type;
  
  const MuscleGroupChangedAction(this.type);
}