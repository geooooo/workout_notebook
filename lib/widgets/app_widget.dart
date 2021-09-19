import 'package:flutter/cupertino.dart';
import 'package:workout_notebook/models/app_routes.dart' as app_routes;
import 'package:workout_notebook/models/strings.dart' as strings;
import 'package:workout_notebook/widgets/widget_gallery/widget_gallery_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoApp(
    debugShowCheckedModeBanner: false,
    theme: const CupertinoThemeData(brightness: Brightness.light),
    routes: app_routes.routes,
    title: strings.workoutNotebookText,
    home: const WidgetGalleryWidget(),
  );
}