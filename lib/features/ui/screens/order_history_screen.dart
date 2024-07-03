import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/widgets/custom_app_bar.dart';
import 'package:gym_app/features/ui/widgets/custom_drawer.dart';
import 'package:gym_app/features/ui/widgets/custom_listview.dart';
import 'package:gym_app/features/ui/widgets/custom_title.dart';
import 'package:gym_app/utils/app_colors.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundSecondary,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomTitle(title: 'Compras'),
              Text(
                "2 de julio",
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              CustomerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
