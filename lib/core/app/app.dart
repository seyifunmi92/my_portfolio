import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';

class AppInstance extends StatefulWidget {
  const AppInstance({super.key});

  @override
  State<AppInstance> createState() => _AppInstanceState();
}

class _AppInstanceState extends State<AppInstance> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        themeMode: Managers.theme.mode,
        theme: Managers.theme.appLightTheme,
        darkTheme: Managers.theme.appDarkTheme,
        debugShowCheckedModeBanner: false,
        routes: Managers.route.routes,
        home: Managers.home,
      );
}
