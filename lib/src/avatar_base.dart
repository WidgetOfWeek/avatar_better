// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'dart:io';

import 'package:avatar_better/src/tools/gradiant_random_tools.dart';
import 'package:flutter/material.dart';

import 'tools/text_to_color.dart';
import 'widget/avatar_circle.dart';
import 'widget/profile.dart';

typedef OnPickerChange = void Function(File file);

class Avatar {
  Avatar._();

  static Widget circle({
    /// [onTapAvatar]: A callback function for when the avatar is tapped.
    void Function()? onTapAvatar,

    /// [widthBorder]: The border width of the profile (default: 0.0).
    final double widthBorder = 0.0,

    /// [radius]: The radius of the profile.
    final double? radius,

    /// [image]: The imageAssets for the profile.
    final String? image,

    /// [imageNetwork]: The image URL for the profile.
    final String? imageNetwork,

    /// [backgroundColor]: The background color of the profile (can be null).
    Color? backgroundColor,

    /// [gradientBackgroundColor]: The gradient background of the profile (can be null).
    Gradient? gradientBackgroundColor,

    /// [gradientWidthBorder]: The gradient for the profile's border (default: linear gradient from blue to deep purple).
    Gradient? gradientWidthBorder =
        const LinearGradient(colors: [Colors.blue, Colors.deepPurple]),

    /// [elevation]: create shadow widget  (can be null).
    final double elevation = 0,

    ///[shadowColor]: elevation color .
    final Color shadowColor = Colors.black,

    /// [text]: The text to display on the profile.
    required String? text,

    /// [style]: The text style (default: font size 25, white color, and bold).
    final TextStyle? style = const TextStyle(
        fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),

    /// [randomColor]: A boolean flag for randomizing the background color of the profile.
    bool randomColor = true,

    /// [randomGradient]: A boolean flag for randomizing the background gradient of the profile.
    bool randomGradient = false,

    /// The isBorderAvatar parameter, if true, creates a border for the avatar.
    /// This border contains a circular border with a default width of 5 and a color of LinearGradient.
    /// If this parameter is false, no border will be created for the avatar.
    final bool isBorderAvatar = false,
  }) {
    if (randomColor) {
      backgroundColor = TextToColor.toColor(text!);
    } else if (randomGradient) {
      gradientBackgroundColor =
          GradiantRandomTools.getGradient(text.toString());
    } else {
      backgroundColor = backgroundColor;
    }

    return Circle(
      onTapAvatar: onTapAvatar,
      widthBorder: widthBorder,
      radius: radius,
      image: image,
      imageNetwork: imageNetwork,
      backgroundColor: backgroundColor,
      gradientBackgroundColor: gradientBackgroundColor,
      gradientWidthBorder: gradientWidthBorder,
      elevation: elevation,
      text: text,
      style: style,
      randomColor: randomColor,
      randomGradient: randomGradient,
      isBorderAvatar: isBorderAvatar,
      shadowColor: shadowColor,
    );
  }

  static Widget profile({
    /// [text]: The text to display on the profile.
    required String? text,

    /// [widthBorder]: The border width of the profile [widthBorder = 0.0].
    final double widthBorder = 0.0,

    /// [radius]: The radius of the profile [radius = 35].
    double? radius = 35,

    /// [image]: The imageAssets for the profile.
    final String? image,

    /// [imageNetwork]: The image URL for the profile.
    final String? imageNetwork,

    /// [backgroundColor]: The background color of the profile (can be null).
    Color? backgroundColor,

    /// [gradientBackgroundColor]: The gradient background of the profile (can be null).
    Gradient? gradientBackgroundColor,

    /// [gradientWidthBorder]: The gradient for the profile's border (default: linear gradient from blue to deep purple).
    Gradient? gradientWidthBorder =
        const LinearGradient(colors: [Colors.blue, Colors.deepPurple]),

    /// [style]: The text style (default: font size 25, white color, and bold).
    final TextStyle? style = const TextStyle(
        fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),

    /// [backgroundColorCamera] : color background picker
    final Color backgroundColorCamera = Colors.white,

    /// [icon]: icon picker
    final IconData? icon = Icons.camera,

    /// [iconColor]: color picker icon
    final Color iconColor = Colors.black,

    /// [randomColor]: A boolean flag for randomizing the background color of the profile.
    bool randomColor = true,

    /// [randomGradient]: A boolean flag for randomizing the background gradient of the profile.
    bool randomGradient = false,

    ///[elevation]: elevation color.
    final double elevation = 0,

    /// [shadowColor]: create shadow widget  (can be null).
    final Color shadowColor = Colors.black,

    ///[onPickerChange ]:is an optional property in the [Picker] class that allows you to call a callback when the picker value changes.
    /// This callback has a parameter named value that passes the new value of the picker to it.
    final OnPickerChange? onPickerChange,

    /// The isBorderAvatar parameter, if true, creates a border for the avatar.
    /// This border contains a circular border with a default width of 5 and a color of LinearGradient.
    /// If this parameter is false, no border will be created for the avatar.
    final bool isBorderAvatar = false,
    final OnPickerChangeWeb? onPickerChangeWeb,
  }) {
    if (randomColor) {
      backgroundColor = TextToColor.toColor(text!);
    } else if (randomGradient) {
      gradientBackgroundColor =
          GradiantRandomTools.getGradient(text.toString());
    } else {
      backgroundColor = backgroundColor;
    }
    return Profile(
      widthBorder: widthBorder,
      radius: radius,
      image: image,
      imageNetwork: imageNetwork,
      backgroundColor: backgroundColor,
      gradientWidthBorder: gradientWidthBorder,
      gradientBackgroundColor: gradientBackgroundColor,
      text: text,
      style: style,
      backgroundColorCamera: backgroundColorCamera,
      icon: icon,
      iconColor: iconColor,
      randomColor: randomColor,
      randomGradient: randomGradient,
      onPickerChange: onPickerChange,
      isBorderAvatar: isBorderAvatar,
      shadowColor: shadowColor,
      elevation: elevation,
      onPickerChangeWeb: onPickerChangeWeb,
    );
  }
}
