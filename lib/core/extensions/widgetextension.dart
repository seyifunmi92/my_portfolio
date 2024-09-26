import 'package:flutter/material.dart';

extension WidgetExtension on double {
  Widget get spaceH => SizedBox(
        height: this,
      );

  Widget get spaceW => SizedBox(
        width: this,
      );
}
