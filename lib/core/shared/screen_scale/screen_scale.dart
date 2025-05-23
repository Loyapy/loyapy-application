import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum MDeviceType { mobile, tablet, web }

class ScreenScale {
  ScreenScale._(); // private constructor
  static final ScreenScale i = ScreenScale._();

  /// percentage width: pass 6 to get 6% of screen width
  double pw(double percent) => (percent / 100) * 1.sw;

  /// percentage height: pass 4 to get 4% of screen height
  double ph(double percent) => (percent / 100) * 1.sh;

  /// scalable font size
  double fs(double fontSize) => fontSize.sp;

  /// radius
  double r(double radius) => radius.r;

  static MDeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1024) return MDeviceType.web;
    if (width >= 600) return MDeviceType.tablet;
    return MDeviceType.mobile;
  }

  static int getVisibleItemCount(BuildContext context) {
    switch (getDeviceType(context)) {
      case MDeviceType.mobile:
        return 2;
      case MDeviceType.tablet:
        return 3;
      case MDeviceType.web:
        return 6;
    }
  }
}
