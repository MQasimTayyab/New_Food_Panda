import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({
    super.key,
    this.imagepath = '',
    this.issvg = true,
  });
  final String imagepath;
  final bool issvg;

  @override
  Widget build(BuildContext context) {
    if (issvg) {
      return SvgPicture.asset(
        imagepath,
        fit: BoxFit.contain,
      );
    } else {
      return Image.asset(
        imagepath,
        fit: BoxFit.contain,
      );
    }
  }
}
