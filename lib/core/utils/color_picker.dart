import 'dart:ui';

import 'package:loyapy/core/core.dart';

Color kHexToColor(String hexCode, {required Color primaryColor}) {
  // Remove any leading '#' character
  String formattedHex = hexCode.replaceAll("#", "");

  // Ensure the hex code has a valid length (6 for RRGGBB or 8 for AARRGGBB)
  if (formattedHex.length == 6) {
    // If it's 6 characters, assume full opacity (FF)
    formattedHex = "FF$formattedHex";
  } else if (formattedHex.length != 8) {
    // If it's not 6 or 8 characters, it's an invalid format
    kLog.i("Invalid hex code format: $hexCode. Returning primary color.");
    return primaryColor;
  }

  try {
    // Parse the hex string to an integer and create a Color object
    return Color(int.parse(formattedHex, radix: 16));
  } catch (e) {
    // Catch any parsing errors and return the primary color
    kLog.i("Error parsing hex code '$hexCode': $e. Returning primary color.");
    return primaryColor;
  }
}
