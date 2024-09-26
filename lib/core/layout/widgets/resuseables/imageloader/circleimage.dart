import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';

class ImageWidget {
  ImageWidget._internal();
  static ImageWidget instance = ImageWidget._internal();

  ///build circle avatar
  buildImage({double? radius, Widget? child, String? imagePath, String? imageUrl, bool? isClipRect}) => checkImageWidgetToReturn(radius: radius, child: child, imagePath: imagePath, isClipRect: isClipRect, isAvatar: !isClipRect!);

  ///build cliprect
  Widget buildClipRect({double? radius, Widget? child}) => ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: child,
      );

  Widget buildCircleAvatar({double? radius, ImageProvider? image}) => CircleAvatar(
        radius: radius,
        backgroundImage: image,
      );

  ///build Asset imge
  buildAssetImage(bool isClipRect, String path, {double? height, Color? color, BoxFit? fit}) => isClipRect
      ? Image.asset(
          path,
          height: height ?? 10.h,
          fit: fit ?? BoxFit.contain,
          color: color,
        )
      : AssetImage(path);

  ///build Memory image
  buildMemoryImage(bool isAvatar, Uint8List bytes, {double? height, Color? color, BoxFit? fit}) => !isAvatar
      ? Image.memory(
          bytes,
          height: height ?? 10.h,
          fit: fit ?? BoxFit.contain,
          color: color,
        )
      : MemoryImage(bytes);

  ///network image
  buildNetworkImage(bool isAvatar, String url, {double? height, Color? color, BoxFit? fit}) => !isAvatar
      ? Image.network(
          url,
          height: height ?? 10.h,
          fit: fit ?? BoxFit.contain,
          color: color,
        )
      : NetworkImage(url);

  ///image from file
  buildFileImage(bool isAvatar, File path, {double? height, Color? color, BoxFit? fit}) => !isAvatar
      ? Image.file(
          path,
          height: height ?? 10.h,
          fit: fit ?? BoxFit.contain,
          color: color,
        )
      : FileImage(path);

  ///check image to return
  checkImageWidgetToReturn({
    double? radius,
    Widget? child,
    String? imagePath,
    String? imageUrl,
    bool? isClipRect,
    bool? isAvatar,
  }) {
    if (radius != null) {
      bool isImageClip = isClipRectImage(isClipRect, isAvatar);
      isImageClip ? buildClipRect(radius: radius, child: child ?? getImageTypeToReturn(true)) : buildCircleAvatar(radius: radius, image: getImageTypeToReturn(false));
    } else {
      getImageTypeToReturn(true);
    }
  }

  dynamic getImageTypeToReturn(isClipRect, {String? imagePath, String? ImageUrl, File? file, Uint8List? byte}) {
    if (imagePath != null) {
      return buildAssetImage(isClipRect, imagePath);
    } else if (ImageUrl != null) {
      return buildNetworkImage(isClipRect, ImageUrl);
    } else if (file != null) {
      return buildFileImage(isClipRect, file);
    } else {
      return buildMemoryImage(isClipRect, byte!);
    }
  }

  ///check if image is cliprect or circle avatar
  bool isClipRectImage(bool? isClipRect, bool? isAvatar) => isClipRect == true ? true : false;
}
