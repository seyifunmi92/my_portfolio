import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/servicelocator.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';


///entry point of application
void main() async {
  await initServiceLocator().then((value) => runApp(Managers.app));
}
