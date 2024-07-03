

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final Color hintTextColor;
  final Color enabledBorderColor;
  final Color fillColor;
  final bool obsCureText;
  final VoidCallback? onPressed; // Se añade la propiedad onPressed

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.prefixIcon = Icons.person_outlined,
    this.prefixIconColor = Colors.black,
    this.hintTextColor = const Color.fromARGB(255, 119, 113, 113),
    this.enabledBorderColor = const Color.fromARGB(255, 239, 239, 239),
    this.fillColor = const Color.fromARGB(255, 239, 239, 239),
    this.obsCureText = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      controller: controller,
      maxLines: 1, // Establecer maxLines en 1 para evitar el desbordamiento,
      minLines: 1,
      onTap: onPressed,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enabledBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: prefixIconColor,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintTextColor,
        ),
        filled: true,
        fillColor: fillColor,
      ),
    );
  }
}
