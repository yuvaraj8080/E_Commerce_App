import 'package:ecommerceapp/features/authentication/screens/Login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecommerceapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerceapp/features/authentication/screens/signup.widgets/signup.dart';
import 'package:ecommerceapp/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:ecommerceapp/features/personalization/screens/address/address.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/profile.dart';
import 'package:ecommerceapp/features/personalization/screens/setting/setting.dart';
import 'package:ecommerceapp/features/shop/screens/cart/car.dart';
import 'package:ecommerceapp/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerceapp/features/shop/screens/store/store.dart';
import 'package:ecommerceapp/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/shop/screens/home/widgets/home.dart';

class AppRoutes{
  static final pages = [
    GetPage(name:TRoutes.home, page: () => const HomeScreen()),
    GetPage(name:TRoutes.store, page: () => const StoreScreen()),
    // GetPage(name:TRoutes.favourites, page: () => const FavouriteScreen()),
    GetPage(name:TRoutes.settings, page: () => const SettingScreen()),
    GetPage(name:TRoutes.productReviews, page: () => const ProductReviewScreen()),
    // GetPage(name:TRoutes.order, page: () => const OrderScreen()),
    // GetPage(name:TRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name:TRoutes.cart, page: () => const CartScreen()),
    GetPage(name:TRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name:TRoutes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name:TRoutes.signup, page: () => const SignupScreen()),
    GetPage(name:TRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name:TRoutes.signIn, page: () => const LoginScreen()),
    GetPage(name:TRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name:TRoutes.onBoarding, page: () => const OnBoardingScreen()),

  ];
}