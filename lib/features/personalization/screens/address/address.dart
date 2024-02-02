import 'package:ecommerceapp/common/widgets.Login_Signup/appBar/appbar.dart';
import 'package:ecommerceapp/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerceapp/features/personalization/screens/address/widget/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor:TColors.primaryColor,
        onPressed:()=> Get.to(()=> const AddNewAddressScreen()),
        child:Icon(Iconsax.add,color:TColors.white)
      ),
      appBar: TAppBar(showBackArrow:true,title:Text("Addresses",style:Theme.of(context).textTheme.headlineSmall)),
      body:SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TSingleAddress(selectedAddress: true),
            TSingleAddress(selectedAddress: false),

          ],
        ),
      ),

      ),
    );
  }
}
