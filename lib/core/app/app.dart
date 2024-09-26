import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';
// ignore_for_file: prefer_const_constructors_in_immutables


class AppInstance extends StatefulWidget {
  const AppInstance({super.key});

  @override
  State<AppInstance> createState() => _AppInstanceState();
}

class _AppInstanceState extends State<AppInstance> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Managers.home,
      );
}
