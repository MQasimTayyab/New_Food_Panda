import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({
    super.key,
    this.imagepath = '',
    this.issvg = true,
    this.height,
    this.width,
  });
  final String imagepath;
  final bool issvg;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    if (issvg) {
      return SvgPicture.asset(
        imagepath,
        height: height,
        width: width,
        fit: BoxFit.contain,
      );
    } else {
      return Image.asset(
        imagepath,
        height: height,
        width: width,
        fit: BoxFit.contain,
      );
    }
  }
}
