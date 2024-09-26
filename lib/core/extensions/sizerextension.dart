import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names

extension Sizer on int {
  MediaQueryData get mq => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  num get FIGMA_HEIGHT => 800;

  num get FIGMA_WIDTH => 300;

  num get PADDING_TOP => mq.padding.top;

  num get STATUS_BAR => mq.padding.bottom;

  num get DEVICE_HEIGHT => mq.size.height - PADDING_TOP - STATUS_BAR;

  num get DEVICE_WIDTH => mq.size.width;

  double get h => DEVICE_HEIGHT / (FIGMA_HEIGHT / this);

  double get w => DEVICE_WIDTH / (FIGMA_WIDTH / this);

  double get fsize => h > w ? h : w;
}
