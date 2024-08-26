import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
      );
  static BoxDecoration get fillBluegray700 => BoxDecoration(
        color: appTheme.blueGray700,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray800,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBR100 => BorderRadius.only(
        bottomRight: Radius.circular(100.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}
