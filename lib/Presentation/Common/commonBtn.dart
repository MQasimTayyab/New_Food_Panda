import 'package:flutter/material.dart';
import 'package:food_panda/Data/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? navigateTo;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;

  const CommonButton({
    required this.text,
    required this.onPressed,
    this.navigateTo,
    this.color,
    this.textColor,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
        if (navigateTo != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => navigateTo!),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
    );
  }
}
