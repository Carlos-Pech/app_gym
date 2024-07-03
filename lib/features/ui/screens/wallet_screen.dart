import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/widgets/custom_app_bar.dart';
import 'package:gym_app/features/ui/widgets/custom_drawer.dart';
import 'package:gym_app/features/ui/widgets/custom_title.dart';
import 'package:gym_app/features/ui/widgets/paymentmenthod_item.dart';
import 'package:gym_app/utils/app_colors.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const CustomTitle(title: "Billetera"),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const PaymentmenthodItem();
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  AppColors.buttonPrimary,
                ),
                minimumSize: WidgetStateProperty.all<Size>(
                  const Size(double.infinity, 50),
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              label: const Text(
                'Agregar tarjeta',
                style: TextStyle(color: AppColors.textColorSecondary),
              ),
              icon: const Icon(
                Icons.add,
                color: AppColors.textColorSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
