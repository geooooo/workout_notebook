import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class WeightTypeSwitcherWidget extends StatelessWidget {
  final bool isChecked;
  final void Function(bool) onChanged;

  const WeightTypeSwitcherWidget({
    required this.isChecked,
    required this.onChanged,
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      const Flexible(
        child: Text(strings.exerciseWithAdditionalWeightText + '?'),
      ),
      Flexible(
        child: CupertinoSwitch(
          value: isChecked,
          onChanged: onChanged,
        ),
      ),
    ],
  );
}