import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_colors.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  final Text text;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  const CustomElevatedButtonIcon({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.width,
    this.height,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    Color colorButton = AppColors.buttonPrimary;
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          color ?? colorButton,
        ),
        minimumSize: WidgetStateProperty.all<Size>(
          Size(width ?? double.infinity, height ?? 50),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
              vertical: 8, horizontal: 6), // Ajusta el padding aquí
        ),
      ),
      label: text,
      icon: const Icon(Icons.add_circle_outline, color: AppColors.textColorSecondary ,),
    );
  }
}
