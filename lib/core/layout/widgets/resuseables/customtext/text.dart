import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/constants/colors.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';
// ignore_for_file: must_be_immutable

class IText extends StatelessWidget {
  String value;
  TextStyle? style;
  double? fontsize;
  String? fontfamily;
  FontWeight? fontWeight;
  double? letterSpacing;
  bool? softWrap;
  TextOverflow? overflow;
  Color? fontColor;
  TextAlign? align;
  TextDecoration? decoration;
  double? textHeight;
  IText({super.key, required this.value, this.style, this.fontsize, this.fontfamily, this.fontWeight, this.letterSpacing, this.softWrap, this.overflow, this.fontColor, this.align, this.decoration, this.textHeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: style ??
          TextStyle(
            height: textHeight,
            fontFamily: fontfamily ?? "mont",
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fontsize ?? 20.fsize,
            letterSpacing: letterSpacing,
            color: fontColor ?? ColorHelper.white,
          ),
    );
  }
}
