import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/route_handler/static_routes/namedroutes.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';

class IRoute {
  IRoute._();
  static IRoute instance = IRoute._();

  Map<String, Widget Function(BuildContext)> get routes => {
        NamedRoutes.initView: (context) => Managers.home,
      };
}
