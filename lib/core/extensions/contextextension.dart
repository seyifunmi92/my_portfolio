import 'package:flutter/material.dart';

extension MQs on BuildContext {
  String getDeviceTheme() => MediaQuery.of(this).platformBrightness.name;

  ///routing
  pushNamed(String name, {Object? args}) => Navigator.of(this).pushNamed(name, arguments: args);

  pushReplaced(String name, {Object? args}) => Navigator.of(this).pushReplacementNamed(name, arguments: args);

  replaceAll(String route, {Object? args}) => Navigator.of(this).pushNamedAndRemoveUntil(route, (x) => x.settings.name == route, arguments: args);

  push(Widget route) => Navigator.push(this, MaterialPageRoute(builder: (builder) => route));

  pop() => Navigator.canPop(this);

  ///get full device height
  double get deviceHeight => MediaQuery.of(this).size.height;

  double get deviceWidth => MediaQuery.of(this).size.width;
}
