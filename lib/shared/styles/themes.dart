import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news/shared/styles/colors.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  //fontFamily: '',
  scaffoldBackgroundColor: AppColors.secondColors,
  appBarTheme: const AppBarTheme(
    titleSpacing: 18.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    color: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  ),
// iconTheme: const IconThemeData(
//   color: Colors.black,
// ),
// floatingActionButtonTheme: const FloatingActionButtonThemeData(
//   backgroundColor: Colors.white,
// ),
);
ThemeData darkTheme = ThemeData(
  //scaffoldBackgroundColor: HexColor('333739'),
  primarySwatch: Colors.deepOrange,
  //fontFamily: '',
  scaffoldBackgroundColor: HexColor('333739'),
  appBarTheme: const AppBarTheme(
    titleSpacing: 18.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black12,
      statusBarIconBrightness: Brightness.light,
    ),
    color: Colors.black12,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.black12,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  ),
);
