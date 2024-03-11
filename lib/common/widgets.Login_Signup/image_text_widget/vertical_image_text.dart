import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/shop/controllers/category_controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/halpers/helper_function.dart';
import '../../shimmers/category_shimmer.dart';
import '../texts/section_heading.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    Key? key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            TSectionHeading(
              title: "Popular Categories",
              showActionButton: false,
              buttonTitle: "",
            ),
            const SizedBox(height: 20),
            Obx(() {
              if (categoryController.isLoading.value) {
                return const TCategoryShimmer();
              } else if (categoryController.featuredCategories.isEmpty) {
                return Center(
                  child: Text(
                    "No Data Found!",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white),
                  ),
                );
              } else {
                return SizedBox(
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categoryController.featuredCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category =
                      categoryController.featuredCategories[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: backgroundColor ??
                                    (dark ? TColors.black : TColors.white),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Image.network(
                                  category.image,
                                  fit: BoxFit.cover,
                                  color: dark ? TColors.light : TColors.dark,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 55,
                              child: Text(
                                category.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: textColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
