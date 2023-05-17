import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color.fromRGBO(233, 69, 96, 1),
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(233, 69, 96, 1),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: Colors.black,
        brightness: Brightness.light,
      )
      .copyWith(background: Colors.white),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color.fromRGBO(233, 69, 96, 1),
  primaryColor: const Color.fromRGBO(233, 69, 96, 1),
  highlightColor: const Color.fromRGBO(233, 69, 96, 1),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: const Color.fromRGBO(233, 69, 96, 1),
        brightness: Brightness.dark,
      )
      .copyWith(background: Colors.grey[800]),
);
