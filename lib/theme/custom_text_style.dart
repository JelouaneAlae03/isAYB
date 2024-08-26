import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get barlowSemiCondensed {
    return copyWith(
      fontFamily: 'Barlow Semi Condensed',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Display style
  static get displayMedium_1 => theme.textTheme.displayMedium!;
// Headline style
  static get headlineLargeInter => theme.textTheme.headlineLarge!.inter;
// Label text style
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
// Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge22_1 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}
