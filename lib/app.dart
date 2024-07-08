import 'package:flutter/material.dart';
import 'package:task_manager_flutter/themes/app_bar.dart';
import 'package:task_manager_flutter/themes/elevated_button.dart';
import 'package:task_manager_flutter/themes/input_decoration.dart';
import 'package:task_manager_flutter/themes/text_theme.dart';
import 'package:task_manager_flutter/utils/app_route.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: TaskManager.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.generateRoute,
      theme: ThemeData(
        inputDecorationTheme: getInputDecorationTheme(),
        elevatedButtonTheme: getElevatedButtonThemeData(),
        textTheme: getTextTheme(),
        appBarTheme: getAppBarTheme(),
      ),
    );
  }
}
