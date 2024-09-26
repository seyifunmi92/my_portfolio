import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageLoader extends StatelessWidget {
  ImageArgs? image;
  ImageLoader({super.key, this.image});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ImageArgs {
  String? imageUrl;
  String? imagePath;

  ImageArgs({this.imageUrl, this.imagePath});
}
