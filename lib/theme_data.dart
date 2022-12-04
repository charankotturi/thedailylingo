import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  textTheme: TextTheme(
      headline1: headLine,
      subtitle1: titleText,
      subtitle2: titleTextTwo,
      headline2: subHeadline,
      bodyText1: subTitle,
      bodyText2: reminderText),
  primarySwatch: Colors.green,
);

var headLine = const TextStyle(
  fontSize: 25,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  fontFamily: 'Habibi',
);

var subHeadline = const TextStyle(
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);

var titleText = const TextStyle(
  fontSize: 15,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

var titleTextTwo = const TextStyle(
  fontSize: 19,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  fontFamily: 'Habibi',
);

var subTitle = const TextStyle(
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);

var reminderText = const TextStyle(
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Habibi',
);
