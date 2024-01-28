import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets.Login_Signup/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets.Login_Signup/images/t_Rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../controllers/home_screenController.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController()); // Initialize your controller properly
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => TRoundedImage(imageUlr: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: Obx(() => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i <banners.length; i++)
                TCircularContainer(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.only(right: 8),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? TColors.primaryColor
                      : TColors.grey,
                )
            ],
          )),
        )
      ],
    );
  }
}
