import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.isFeatured,
    this.parentId = "",
  });

  ///EMPTY HELPER FUNCTION
  static CategoryModel empty() =>CategoryModel(id: "", name: "", image: "", isFeatured: false);


  /// CONVERT MODEL TO JSON STRUCTURES SO THAT YOU CAN DATA IN FIRESTORE
  Map<String, dynamic> toJson() {
    return{
      'Name':name,
      "Image":image,
      "ParentId":parentId,
      "IsFeatured":isFeatured,
    };
  }

  ///   MAP JSON ORIENTED DOCUMENT SNAPSHOT FIREBASE TO USERMODEL
  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      // Map json Record to the Model
      return CategoryModel(
        id: document.id,
        name: data["Name"] ?? '',
        image: data["Image"] ?? '',
        parentId: data["ParentId"] ?? '',
        isFeatured: data['IsFeatured'] ?? false,
      );
    } else {
      return CategoryModel.empty();
    }
  }
}
