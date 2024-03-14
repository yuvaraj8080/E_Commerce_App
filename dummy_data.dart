import 'package:ecommerceapp/features/shop/models/banner_model.dart';
import 'package:ecommerceapp/features/shop/models/category_model.dart';
import 'package:ecommerceapp/routes/routes.dart';



class TDummyData{
  ///---- BANNERS------
  static final List<BannerModel> banners = [
    BannerModel(imageUrl: '', targetScreen:TRoutes.order, active: false),
  ];


  ///-----LIST OF ALL CATEGORIES----
  static final List<CategoryModel> categories =[
    CategoryModel(id: "1", name:"Sports", image:"assets/images/images/img.png", isFeatured: true),
    CategoryModel(id: "5", name:"Furniture", image:"assets/images/images/img_1.png", isFeatured: true),
    CategoryModel(id: "5", name:"Electronics", image:"assets/images/images/img_2.png", isFeatured: true),
    CategoryModel(id: "2", name:"Clothes", image:"assets/images/images/img_3.png", isFeatured: true),
    CategoryModel(id: "3", name:"Animals", image:"assets/images/images/img_4.png", isFeatured: true),
    CategoryModel(id: "4", name:"Shoes", image:"assets/images/images/img_5.png", isFeatured: true),
    CategoryModel(id: "6", name:"Cosmetics", image:"assets/images/images/img_6.png", isFeatured: true),
    CategoryModel(id: "7", name:"Jewelry", image:"assets/images/images/img_7.png", isFeatured: true),

  ///----- SUB CATEGORIES---------
    CategoryModel(id:"8", name:"Sport Shoes", image:'assets/images/images/img_8.png', isFeatured: false,parentId:"1"),
    CategoryModel(id:"9", name:"Track suits", image:'assets/images/images/img_9.png', isFeatured: false,parentId:"1"),
    CategoryModel(id:"10", name:"Sport Equipments", image:'assets/images/images/img_10.png', isFeatured: false,parentId:"1"),

  ///------FURNITURE-----
    CategoryModel(id:"11", name:"Bedroom furniture", image:'assets/images/images/img_11.png', isFeatured: false,parentId:"5"),
    CategoryModel(id:"12", name:"Kitchen furniture", image:'assets/images/images/img_12.png', isFeatured: false,parentId:"5"),
    CategoryModel(id:"13", name:"Office furniture", image:'assets/images/images/img_13.png', isFeatured: false,parentId:"5"),

  ///-------ELECTRONICS-----
    CategoryModel(id:"14", name:"Laptop", image:'assets/images/images/img_14.png', isFeatured: false,parentId:"2"),
    CategoryModel(id:"15", name:"Mobile", image:'assets/images/images/img_15.png', isFeatured: false,parentId:"2"),


  /// SHIRTS PNG IMAGE ---
    CategoryModel(id:"16", name:"Shirts", image:'assets/images/images/img_16.png', isFeatured: false,parentId:"3"),

  ];

}