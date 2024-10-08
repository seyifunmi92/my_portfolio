import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';
// ignore_for_file: must_be_immutable

class Pad extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;
  EdgeInsetsGeometry? padding;
  Pad({super.key, this.height, this.width, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: width ?? 50.w),
      child: child,
    );
  }
}
