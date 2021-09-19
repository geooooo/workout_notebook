import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/exercise/muscle_group_type.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class MuscleGroupPickerWidget extends StatelessWidget {
  final void Function(MuscleGroupType) onChanged;

  const MuscleGroupPickerWidget({
    required this.onChanged,
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      const Flexible(
        child: Text(strings.muscleGroupText + ':'),
      ),
      Flexible(
        child: SizedBox(
          height: 100,
          width: 200,
          child: CupertinoPicker(
            looping: true,
            useMagnifier: true,
            itemExtent: 40,
            onSelectedItemChanged: _onSelectedItemChanged,
            children: _buildMuscleGroupItems(),
          ),
        ),
      ),
    ],
  );

  List<Widget> _buildMuscleGroupItems() => 
    MuscleGroupType.values.map(_buildMuscleGroupItem).toList();

  Widget _buildMuscleGroupItem(MuscleGroupType type) => Container(
    alignment: AlignmentDirectional.center,
    height: 40,
    child: Text(type.toLocaleString()),
  );

  void _onSelectedItemChanged(int index) => 
    onChanged(MuscleGroupType.values[index]);
}