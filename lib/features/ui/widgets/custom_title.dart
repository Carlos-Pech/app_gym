import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_colors.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double? size;
  const CustomTitle({super.key, required this.title, this.size });

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: TextAlign.left,
        style:  TextStyle(
            fontSize: size ?? 32,
            fontWeight: FontWeight.bold,
            color: AppColors.titlePrimary));
  }
}
