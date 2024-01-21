import 'package:flutter/material.dart';

class TTextFieldTheme {

  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
      prefixIconColor:Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle().copyWith(fontSize:14, color: Colors.black),// Label text style
      hintStyle: const TextStyle().copyWith(fontSize:14,color:Colors.black), // Hint text style
      errorStyle: const TextStyle().copyWith(fontStyle:FontStyle.normal), // Error text style
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.black), // Floating label text style

      // Border customization
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width:1,color: Colors.grey),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width:1,color: Colors.grey),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width:1,color: Colors.black12),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width:2,color: Colors.orange),
      ),
    );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor:Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize:14, color: Colors.white),// Label text style
    hintStyle: const TextStyle().copyWith(fontSize:14,color:Colors.white), // Hint text style
    errorStyle: const TextStyle().copyWith(fontStyle:FontStyle.normal), // Error text style
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)), // Floating label text style

    // Border customization
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:2,color: Colors.orange),
    ),
  );

  }

