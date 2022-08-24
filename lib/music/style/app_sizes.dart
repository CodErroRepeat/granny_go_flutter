import 'package:flutter/widgets.dart';

class AppSizes {
  static double width = 0;
  static double height = 0;
  static double blockSize = 0;
  static double blockSizeVertical=0;
  static double textScaleFactor=0;

  static void loadAppSizes(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    AppSizes.width = queryData.size.width;
    AppSizes.height = queryData.size.height;
    AppSizes.blockSize = AppSizes.width / 100;
    AppSizes.blockSizeVertical = AppSizes.height / 100;
    AppSizes.textScaleFactor = queryData.textScaleFactor;
  }
}
