import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.blueGray800,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray40001,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 15.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 10.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w300,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 40.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 32.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 19.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Barlow Semi Condensed',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // BlueGray
  Color get blueGray700 => Color(0XFF555A71);
  Color get blueGray800 => Color(0XFF2F3D4B);
// Gray
  Color get gray200 => Color(0XFFEAEAEA);
  Color get gray400 => Color(0XFFD0B3A2);
  Color get gray40001 => Color(0XFFB9B9B9);
  Color get gray700 => Color(0XFF5C5252);
  Color get gray800 => Color(0XFF535D38);
// Green
  Color get greenA700 => Color(0XFF05FF00);
// Red
  Color get redA700 => Color(0XFFFF0000);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
