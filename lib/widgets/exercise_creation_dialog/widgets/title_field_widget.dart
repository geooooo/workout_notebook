import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class TitleFieldWidget extends StatelessWidget {
  final void Function(String) onChanged;

  const TitleFieldWidget({
    required this.onChanged, 
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoTextField(
    placeholder: strings.barbellPressText,
    onChanged: onChanged,
    prefix: const Padding(
      padding: EdgeInsets.only(left: 6),
      child: Text(strings.titleText + ':'),
    ),
  );
}

