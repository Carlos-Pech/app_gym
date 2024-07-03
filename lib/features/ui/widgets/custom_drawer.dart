import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.backgroundPrimary,
            ),
            child: Column(
              children: <Widget>[
                Icon(Icons.account_circle, size: 50),
                SizedBox(width: 10),
                Text('Usuario', style: TextStyle(fontSize: 20)),
                Text('Usuario@Gmail.com', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          ListTile(
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text('Historial de compras'),
            onTap: () {
              Navigator.pushNamed(context, '/order-history');
            },
            
          ),
            ListTile(
            title: const Text('Datos de perfil'),
            onTap: () {
              Navigator.pushNamed(context, '/shopping');
            },
          ),
          ListTile(
            title: const Text('Carrito de compras'),
            onTap: () {
              Navigator.pushNamed(context, '/shopping');
            },
          ),
        ],
      ),
    );
  }
}
