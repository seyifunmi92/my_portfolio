import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/extensions/sizerextension.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/singleton_managers/managers.dart';

class ImageWidget {
  ImageWidget._internal();
  static ImageWidget instance = ImageWidget._internal();

  ///build circle avatar
  Widget buildImage({
    double? radius,
    Widget? child,
    String? imagePath,
    String? imageUrl,
    bool? isClipRect = true,
    String? svg,
  }) =>
      checkImageWidgetToReturn(radius: radius, child: child, imagePath: imagePath, isClipRect: isClipRect, isAvatar: !isClipRect!, svg: svg);

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

  ///build image from svg path
  Widget buildSvgImage({String? svg, double? height, BoxFit? fit}) => SvgPicture.asset(svg ?? Managers.imageholder.placeHolder, height: height ?? 30.h, fit: fit ?? BoxFit.contain);

  ///check image to return
  dynamic checkImageWidgetToReturn({
    double? radius,
    Widget? child,
    String? imagePath,
    String? imageUrl,
    bool? isClipRect,
    bool? isAvatar,
    String? svg,
  }) {
    if (radius != null) {
      bool isImageClip = isClipRectImage(isClipRect, isAvatar);
      return isImageClip ? buildClipRect(radius: radius, child: child ?? getImageTypeToReturn(true)) : buildCircleAvatar(radius: radius, image: getImageTypeToReturn(false));
    } else {
      return getImageTypeToReturn(true);
    }
  }

  dynamic getImageTypeToReturn(isClipRect, {String? imagePath, String? imageUrl, File? file, Uint8List? byte, String? svg}) {
    if (imagePath != null) {
      return buildAssetImage(isClipRect, imagePath);
    } else if (imageUrl != null) {
      return buildNetworkImage(isClipRect, imageUrl);
    } else if (file != null) {
      return buildFileImage(isClipRect, file);
    } else if (byte != null) {
      return buildMemoryImage(isClipRect, byte);
    } else {
      return buildSvgImage(svg: svg);
    }
  }

  ///check if image is cliprect or circle avatar
  bool isClipRectImage(bool? isClipRect, bool? isAvatar) => isClipRect == true ? true : false;
}
