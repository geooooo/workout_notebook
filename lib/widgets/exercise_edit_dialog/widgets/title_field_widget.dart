import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/strings.dart' as strings;

class TitleFieldWidget extends StatefulWidget {
  final String title;
  final void Function(String) onChanged;

   const TitleFieldWidget({
    required this.title,
    required this.onChanged, 
    Key? key,
  }): super(key: key);

  @override
  State<TitleFieldWidget> createState() => _TitleFieldWidgetState();
}

class _TitleFieldWidgetState extends State<TitleFieldWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    
    _controller = TextEditingController();
    _controller.text = widget.title;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => CupertinoTextField(
    controller: _controller,
    placeholder: strings.barbellPressText,
    onChanged: widget.onChanged,
    prefix: const Padding(
      padding: EdgeInsets.only(left: 6),
      child: Text(strings.titleText + ':'),
    ),
  );
}

