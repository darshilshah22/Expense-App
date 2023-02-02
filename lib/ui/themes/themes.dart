import 'package:flutter/material.dart';

final appTheme = ThemeData(
  splashColor: Colors.white,
  primaryColor: redColor,
  primaryColorDark: redColor,
  //primarySwatch: Colors.lightGreen,
  brightness: Brightness.light,

  // Define the default font family.
  //fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
    subtitle1: TextStyle(fontSize: 18.0),
    bodyText1: TextStyle(
      fontSize: 14.0,
    ),
    bodyText2: TextStyle(fontSize: 12.0),
  ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: greenColor),
);

final splashTheme = ThemeData(
  brightness: Brightness.light,
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.00)),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 12.50,
      horizontal: 10.00,
    ),
  ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.greenAccent),
);

const Color redColor = Color(0xFFd3412b);
const Color greenColor = Color(0xFF55851c);
const Color greenLightColor = Color(0xFF7dac2f);
const Color blueColor = Color(0xFF1976d2);
const Color blueLightColor = Colors.lightBlueAccent;
const Color textColor = Color(0xFF262626);
const Color lightGreyCardColor = Color.fromRGBO(250, 250, 250, 1); //
const Color blackColor = Color(0xFF000000);
