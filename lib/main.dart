import 'package:core/app/base_app.dart';
import 'package:core/app/micro_core_utils.dart';
import 'package:core/app/microapp.dart';
import 'package:flutter/material.dart';
import 'package:home/app/home_resolver.dart';
import 'package:login/app/login_resolver.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  WidgetBuilderRoutes get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        LoginResolver(),
        HomeResolver(),
      ];
}
