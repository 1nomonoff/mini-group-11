import 'package:flutter/widgets.dart';

extension CheckDeviceExtension on BuildContext {
  DeviceType checkDevice() {
    double width = MediaQuery.sizeOf(this).width;

    if (width <= 650) {
      return DeviceType.mobile;
    } else if (width > 650) {
      return DeviceType.tab;
    }
    return DeviceType.tab;
  }
}

enum DeviceType { mobile, tab }
