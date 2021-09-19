 import 'package:flutter/cupertino.dart';
 import 'package:workout_notebook/models/strings.dart' as strings;

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => const Text(
    strings.newExerciseText,
    style: TextStyle(
      fontWeight: FontWeight.bold,
    )
  );
}
 
 