

import 'package:flutter/material.dart';

class AppTheme {
  //Color dorado
  static const Color dorado =  Color(0xffac862e);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Appbar theme
        appBarTheme: const AppBarTheme(
          color: dorado,
          elevation: 0
        ),
        //Elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:  ElevatedButton.styleFrom(        
          textStyle: const TextStyle(
            fontSize: 18,
            fontFamily: "MulishM",
          ),
          foregroundColor: const Color(0xffffffff),
          backgroundColor: const Color(0xffac862e),
          padding: const EdgeInsets.symmetric(horizontal: 50),                              
          ),
        ),
        //Text field theme
        inputDecorationTheme: const InputDecorationTheme(          
          labelStyle:  TextStyle(
            fontFamily: "MulishM"
          ),
          hintStyle:  TextStyle(
            fontFamily: "MulishM"
          ),
        ),
      );
}