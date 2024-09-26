import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Managers.image.buildImage(),
    );
  }
}
