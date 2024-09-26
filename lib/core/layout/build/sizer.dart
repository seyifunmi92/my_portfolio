import 'package:flutter/material.dart';
// ignore_for_file: camel_case_types, constant_identifier_names

enum Device_Type {
  PHONE,
  TABLET,
  WEB,
  DEFAULT,
}

enum Device_Orientation {
  LANDSCAPE,
  PORTRAIT,
}

Device_Type deviceType = getCurrentDeviceType(MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).size.height, MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).size.width);
Device_Orientation deviceOrientation = getCurrentDeviceOrientation();

Device_Type getCurrentDeviceType(double height, double width) {
  if (height > 600 && width > 1000) {
    return Device_Type.WEB;
  } else if (height > 600 && (width > 700 && width < 1200)) {
    return Device_Type.TABLET;
  } else {
    return Device_Type.PHONE;
  }
}

Device_Orientation getCurrentDeviceOrientation() => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).orientation.name.toLowerCase() == "landscape" ? Device_Orientation.LANDSCAPE : Device_Orientation.PORTRAIT;
