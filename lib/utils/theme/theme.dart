import 'package:ecommerceapp/utils/theme/custom_theme/TChechboxTheme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/bottomSheetTheme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/outlined_buttond.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/text_field_Theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3:true,
        fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor:Colors.white,
    textTheme:TTextTheme.lightTextTheme,
    chipTheme:TChipTheme.lightChipTheme,
    appBarTheme:TAppbarTheme.lightAppBarTheme,
    checkboxTheme:TCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme:TBottomSheetTheme.ligthBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme:TOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme:TTextFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3:true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor:Colors.blue,
    textTheme:TTextTheme.darkTextTheme,
    scaffoldBackgroundColor:Colors.black,
    chipTheme:TChipTheme.darkChiptheme,
    appBarTheme:TAppbarTheme.darkAppBarTheme,
    checkboxTheme:TCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme:TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme:TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme:TTextFieldTheme.darkInputDecorationTheme,

  );
}