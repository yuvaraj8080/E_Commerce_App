import 'package:ecommerceapp/data/repositories/categories/catagorory_repository.dart';
import 'package:ecommerceapp/features/shop/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../common/widgets.Login_Signup/loaders/snackbar_loader.dart';

class CategoryController extends GetxController{
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit(){
    fetchCategories();
    super.onInit();
  }

  ///-----LOAD CATEGORY DATA
  Future<void> fetchCategories() async{
    try {
      /// SHOW LOADER WHILE LOADING CATEGORIES
      isLoading.value = true;
      /// FETCH CATEGORIES FROM DATA SOURCE (FIRESTORE , API ,ETC)
      final categories  = await _categoryRepository.getAllCategories();
      /// UPDATE FEATURED CATEGORIES
      allCategories.assignAll(categories);
      /// FILTER FEATURED CATEGORIES
      featuredCategories.assignAll(allCategories.where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());
    }
    catch(e){
      TLoaders.errorSnackBar(title:"Oh Snap",message:e.toString());
    }
    finally{
      ///REMOVE LOADER
      isLoading.value = false;
    }
  }

}