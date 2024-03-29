import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/cart/cart_menu_icon.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/appBar/appbar.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/custom_shapes/container/search_Container.dart.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/layout/grid_layout.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/controllers/category_controller.dart';
import 'package:ecommerceapp/features/shop/screens/store/widget/category_tab.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets.Login_Signup/Products_cart/TBrandCard.dart';
import '../../../../common/widgets.Login_Signup/appBar/tabbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/halpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length:categories.length,
      child: Scaffold(
        appBar: TAppBar(
            title: Text("Store",
                style: Theme.of(context).textTheme.headlineMedium),
            actions: [TCardCounterIcon(onPressed: () {})]),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunction.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 350,
                    flexibleSpace: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ///  ----- Search Bar ---------
                              const SizedBox(height: 16),
                              const TSearchController(
                                text: "Search in Store",
                                showBackground: false,
                                showBorder: true,
                                padding: EdgeInsets.zero,
                              ),
                              const SizedBox(height: 16),

                              ///  ------ Feature Brands --------
                              TSectionHeading(
                                  title: "Featured Brands", onPressed: () {}),
                              const SizedBox(height: 8),

                              /// --------Brand Card Hare -------
                              TGridLayout(
                                  itemCount: 4,
                                  mainAxisExtent: 60,
                                  itemBuilder: (_, index) {
                                    return const TBrandCard(showBorder: true);
                                  })
                            ])),

                    /// ------- Scrolling TabBar hare ---------
                    bottom:  TTabBar(tabs:categories.map((category) => Tab(child:Text(category.name))).toList()))
              ];
            },

            ///--------TABBAR VIEW
            body:TabBarView(children:categories.map((category) => TCategoryTab(category:category)).toList()),
        )),
      );
  }
}
