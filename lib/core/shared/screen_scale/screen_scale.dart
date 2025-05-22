import 'package:flutter_screenutil/flutter_screenutil.dart';

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
}
