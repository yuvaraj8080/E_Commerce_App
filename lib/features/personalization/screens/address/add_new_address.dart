import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets.Login_Signup/appBar/appbar.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const TAppBar(showBackArrow: true,title:Text("Add New Address")),
      body:SingleChildScrollView(
        child:Padding(padding:const EdgeInsets.all(8),
          child:Form(
            child:Column(
              children:[
                TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.user),labelText:"Name")),
                const SizedBox(height:8),
                TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.mobile),labelText:"Phone Number")),
                const SizedBox(height:8),

                Row(children:[
                  Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.building_31),labelText:"Street"))),
                  const SizedBox(width:8),
                  Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.code),labelText:"Postal Code"))),
                ]),
                const SizedBox(height:8),
                Row(children:[
                  Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.building),labelText:"City"))),
                  const SizedBox(width:8),
                  Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.activity),labelText:"State"))),
                ]),
                const SizedBox(height:8),
                TextFormField(decoration:const InputDecoration(prefixIcon:Icon(Iconsax.global),labelText:"Country")),
                const SizedBox(height:15),
                SizedBox(width:double.infinity,child:ElevatedButton(onPressed:(){},child:const Text("Save"),))
              ]
            ),
          )
        )
      )
    );
  }
}
