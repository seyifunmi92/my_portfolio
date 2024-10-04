import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/contextextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/properties/widget_properties/scaffold_gradientprops.dart';

class ScaffoldGradient extends StatelessWidget {
  ScaffoldGradientProperties props;

  ScaffoldGradient({super.key, required this.props});

  @override
  Widget build(BuildContext context) => Container(
        height: props.height ?? context.deviceHeight,
        width: context.deviceWidth,
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.black, Color(0xff646566)])),
        child: props.child ?? Container(),
      );
}
