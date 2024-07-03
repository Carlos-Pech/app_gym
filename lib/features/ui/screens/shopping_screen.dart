import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/index.dart';
import 'package:gym_app/features/ui/widgets/custom_app_bar.dart';
import 'package:gym_app/features/ui/widgets/custom_drawer.dart';
import 'package:gym_app/features/ui/widgets/custom_listview.dart';
import 'package:gym_app/features/ui/widgets/custom_title.dart';
import 'package:gym_app/utils/app_colors.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundTerteary,
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomTitle(title: 'Tu carrito'),
                    CustomerListView(
                      showIconsRow: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundTerteary,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Subtotal:",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 1000",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "Total:",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "\$ 1000",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  text: 'Pagar',
                  textStyle: const TextStyle(
                    color: AppColors.textColorSecondary,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
