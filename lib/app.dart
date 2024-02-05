import 'package:ecommerceapp/bindings/genral_bindinng.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
      initialBinding:GeneralBinding(),
      home:const Scaffold(backgroundColor:TColors.primaryColor,
          body:Center(child:CircularProgressIndicator(
              color:Colors.white))),
    );
  }
}
