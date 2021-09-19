import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/exercise/muscle_group_type.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class MuscleGroupPickerWidget extends StatefulWidget {
  final MuscleGroupType muscleGroupType;
  final void Function(MuscleGroupType) onChanged;

  const MuscleGroupPickerWidget({
    required this.muscleGroupType,
    required this.onChanged,
    Key? key,
  }): super(key: key);

  @override
  State<MuscleGroupPickerWidget> createState() => _MuscleGroupPickerWidgetState();
}

class _MuscleGroupPickerWidgetState extends State<MuscleGroupPickerWidget> {
  late final FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();

    final itemIndex = MuscleGroupType.values.indexOf(widget.muscleGroupType);
    _controller = FixedExtentScrollController(initialItem: itemIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            scrollController: _controller,
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
    widget.onChanged(MuscleGroupType.values[index]);
}