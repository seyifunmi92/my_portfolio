import 'dart:ui';
import 'package:oluwaseyi_fatunmole_portfolio/core/constants/colors.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';

class Styles {
  Styles._internal();
  static Styles instance = Styles._internal();

 customStyle() => TextStyle(
        fontFamily: "mont",
        fontWeight: FontWeight.normal,
        fontSize: 10.fsize,
        letterSpacing: 0.0,
        color: ColorHelper.white,
      );
}
