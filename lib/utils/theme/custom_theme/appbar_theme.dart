import 'package:flutter/material.dart';

class TAppbarTheme {
  TAppbarTheme._();


     //    THIS IS THE LIGHT THEME  //
  static const lightAppBarTheme = AppBarTheme(
      color: Colors.blue,
      // Change the background color of the app bar
      elevation: 3.0,
      centerTitle: false,
      // Change the elevation (shadow) of the app bar
      scrolledUnderElevation: 0,
      // backgroundColor:Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: Colors.black,
          size: 24),
      // Change the color of the icons on the app bar
      actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black)
  );


  //     THIS IS THE DARK THEME
  static const darkAppBarTheme = AppBarTheme(
      color: Colors.blue,
      // Change the background color of the app bar
      elevation: 3.0,
      centerTitle: false,
      // Change the elevation (shadow) of the app bar
      scrolledUnderElevation: 0,
      // backgroundColor:Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: Colors.white,
          size: 24),
      // Change the color of the icons on the app bar
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white)
  );

}
