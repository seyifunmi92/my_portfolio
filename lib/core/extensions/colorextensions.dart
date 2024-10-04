import 'dart:ui';
import 'package:flutter/material.dart';


extension ColorCodeExt on num {
  Color get toColor => Color(0xff + toInt());
}
