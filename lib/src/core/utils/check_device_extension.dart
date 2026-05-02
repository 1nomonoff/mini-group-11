import 'package:flutter/widgets.dart';

extension CheckDeviceExtension on BuildContext {
  DeviceType checkDevice() {
    double width = MediaQuery.sizeOf(this).width;

    if (width <= 360) {
      return DeviceType.mobile;
    } else {
      return DeviceType.tab;
    }
  }
}

enum DeviceType { mobile, tab}
