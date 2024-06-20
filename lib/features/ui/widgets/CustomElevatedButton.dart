import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bgColor = const Color.fromARGB(255, 6, 16, 40);
  final Color? color;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.color,
    this.width,
    this.height,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          color ?? Colors.orange,
        ),
        minimumSize: WidgetStateProperty.all<Size>(
          Size(width ?? double.infinity, height ?? 50),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
