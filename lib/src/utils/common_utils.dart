import 'package:flutter/material.dart';

class CommonUtils {
  static void goBack(BuildContext context) {
    Navigator.pop(context, true);
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
