import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class FooterWidget extends StatelessWidget {
  final void Function() onSavePressed;
  final void Function() onCancelPressed;

  const FooterWidget({
    required this.onSavePressed,
    required this.onCancelPressed,
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Flexible(
        child: CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: onSavePressed,
          child: const Text(strings.saveText),
        ),
      ),
      Flexible(
        child: CupertinoDialogAction(
          onPressed: onCancelPressed,
          child: const Text(strings.cancelText),
        ),
      ),
    ],
  );
}