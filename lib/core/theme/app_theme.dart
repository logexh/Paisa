import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:paisa/core/theme/paisa_theme.dart';

ThemeData appTheme(
  BuildContext context,
  ColorScheme colorScheme,
  String fontPreference,
  TextTheme textTheme,
  Color dividerColor,
  SystemUiOverlayStyle systemUiOverlayStyle,
) {
  return ThemeData.from(
    colorScheme: colorScheme,
    useMaterial3: true,
  ).copyWith(
    textTheme: textTheme,
    colorScheme: colorScheme,
    dialogTheme: dialogTheme,
    timePickerTheme: timePickerTheme,
    appBarTheme: appBarTheme(systemUiOverlayStyle),
    scaffoldBackgroundColor: colorScheme.surface,
    dialogBackgroundColor: colorScheme.surface,
    navigationDrawerTheme: navigationDrawerThemeData(
      colorScheme,
      textTheme,
    ),
    drawerTheme: drawerThemeData(
      colorScheme,
      textTheme,
    ),
    applyElevationOverlayColor: true,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme(
      context,
      colorScheme,
    ),
    extensions: [lightCustomColor],
    dividerTheme: DividerThemeData(color: dividerColor),
  );
}
