import 'package:ecommerceapp/common/widgets.Login_Signup/appBar/appbar.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/images/t_circular_image.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widget/profile_menudart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const TAppBar(showBackArrow:true,title:Text("Profile")),

      ///------BODY-------
      body:SingleChildScrollView(
        child:Padding(padding:const EdgeInsets.all(20),
        child:Column(
          children:[

            ///-----PROFILE PICTURE--------k
            SizedBox(
              width:double.infinity,
              child:Column(children:[
                const TCircularImage(image:"assets/user/UserImge.png",width:100,height:100),
                TextButton(onPressed:(){}, child:const Text("Change Profile Picture"))
              ])
            ),

            ///------DETAIL--------
            const Divider(),
            const SizedBox(height:5),
            const TSectionHeading(title:"Profile Inforamation",showActionButton:false),
            const SizedBox(height:8),

            TProfileMenu(title:"Name",value:"YUVARAJ DEKHANE",onPressed:(){}),
            TProfileMenu(title:"Username",value:"yuvaraj@8080",onPressed:(){}),

             ///-----HEADING PERSONAL INFORMATION-------

            const TSectionHeading(title:"Personal Information",showActionButton:false),
            const SizedBox(height:8),

            TProfileMenu(title:"User ID", value:"565758",icon:Iconsax.copy,onPressed:(){}),
            TProfileMenu(title:"E-Mail", value:"yuvarajdekhane8080@gmail.com",onPressed:(){}),
            TProfileMenu(title:"Phone NO:", value:"8080737803",onPressed:(){}),
            TProfileMenu(title:"Gender", value:"Male",onPressed:(){}),
            TProfileMenu(title:"DOB", value:"21/07/2003",onPressed:(){}),
            const Divider(),
            const SizedBox(height:10),
            Center(child: TextButton(
              onPressed:(){},child:const Text("Close Account",style:TextStyle(color:Colors.red)),
            ))
          ]
        )
        )
      )
    );
  }
}

