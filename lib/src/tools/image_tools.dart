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
      print('Crop Error: $e');
      return null; //
    }
  }
}
