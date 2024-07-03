import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/widgets/custom_title.dart';
import 'package:gym_app/utils/app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Color de la sombra
            spreadRadius: 2, // Radio de propagación de la sombra
            blurRadius: 7, // Radio de difuminado de la sombra
            offset: const Offset(0, 3), // Desplazamiento de la sombra en x y y
          ),
        ],
      ),
      child: AppBar(
        title: const CustomTitle(
          title: "Lalo's Gym",
          size: 24,
        ),
        backgroundColor: AppColors.backgroundTerteary,
        elevation:
            0, // Asegúrate de establecer el elevación en 0 para el AppBar
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
    );
  }
}
