import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class StorageSevice {
  final storageRef = FirebaseStorage.instance.ref();
  Future<dynamic> uploadImages(List<XFile> images) async {
    for (var image in images) {
      final mountainsRef =
          storageRef.child('image/${DateTime.now().day}/${image.name}');
      try {
        final file = File(image.path);
        final uploadTask = await mountainsRef.putFile(file);
        print(uploadTask);
      } catch (error) {
        print(error.toString());
      }
    }
  }
}
