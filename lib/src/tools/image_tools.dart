import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageTools {
  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  ImageTools({
    ImagePicker? imagePicker,
    ImageCropper? imageCropper,
  })  : _imagePicker = imagePicker ?? ImagePicker(),
        _imageCropper = imageCropper ?? ImageCropper();

  bool multiple = false;
  Future<List<XFile>> pickImage(ImageSource imageSource, bool multiple) async {
    if (multiple == true) {
      return await _imagePicker.pickMultiImage();
    } else {
      final file = await _imagePicker.pickImage(source: imageSource);
      if (file != null) {
        return [file];
      }
      return [];
    }
  }

  Future<CroppedFile?> crop(XFile file, CropStyle cropStyle) async {
    try {
      return await _imageCropper.cropImage(
        sourcePath: file.path,
        cropStyle: cropStyle,
      );
    } catch (e) {
      if (kDebugMode) {
        print('Crop Error: $e');
      }
      return null;
    }
  }

  Future<Uint8List?> cropForWeb(
      XFile file, CropStyle cropStyle, BuildContext context) async {
    try {
      if (kIsWeb) {
        // For web platform
        final uiSettingsList = [
          WebUiSettings(
            context: context,
            enableExif: true,
            enableZoom: true,
            enableResize: true,
            enableOrientation: true,
          )
        ];
        final croppedFile = await _imageCropper.cropImage(
          sourcePath: file.path,
          cropStyle: cropStyle,
          uiSettings: uiSettingsList,
        );
        if (croppedFile != null) {
          return croppedFile.readAsBytes();
        }
      }
    } catch (e) {
      print('Crop Error (Web): $e');
    }
    return null;
  }
}
