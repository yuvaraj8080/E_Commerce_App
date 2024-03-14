import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class TFirebaseStorageService extends GetxController {
  static TFirebaseStorageService get instance => Get.find();

  final _firebaseStorage = FirebaseStorage.instance;

  /// UPLOAD LOCAL ASSETS FROM IDE
  ///  RETURN A UNIT LIST CANTAINING IMAGE DATA

  Future<Uint8List> getImageDataFromAssets(String path) async {
    try {
      final byteData = await rootBundle.load(path);
      final imageData = byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imageData;
    }
    catch(e){
      /// HANDLE EXCEPTION GRACEFULLY
      throw "Error loading image data:$e";
    }
  }

  ///UPLOAD IMAGE USING IMAGEDATA ON CLOUD FIREBASE STORAGE
///RETURN  THEN DOWNLOAD URL OF THE UPLOAD IMAGE
  Future<String> uploadImageData(String path,Uint8List image ,String name )async{
    try{
      final  ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image);
      final url = await ref.getDownloadURL();
      return url;
    }
    catch(e){
      // HANDLE EXCEPTION GRACEFULLY
      if(e is FirebaseException){
        throw"Firebase Exception: ${e.message}";
      }else if(e is SocketException){
        throw"Network Error: ${e.message}";
      }else if(e is PlatformException){
        throw"Platform Error: ${e.message}";
      }else{
        throw"Something Went Wrong! Please try again.";
      }
    }
  }


  ///UPLOAD IMAGE ON CLOUD FIREBASE STORAGE
  ///RETURN THE DOWNLOAD URL OF THE UPLOAD IMAGE.

  Future<String> uploadImageFile(String path,XFile image )async{
    try{
      final  ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    }
    catch(e){
      // HANDLE EXCEPTION GRACEFULLY
      if(e is FirebaseException){
        throw"Firebase Exception: ${e.message}";
      }else if(e is SocketException){
        throw"Network Error: ${e.message}";
      }else if(e is PlatformException){
        throw"Platform Error: ${e.message}";
      }else{
        throw"Something Went Wrong! Please try again.";
      }
    }
  }

}
