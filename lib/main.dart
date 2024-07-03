import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/index.dart';
import 'package:gym_app/features/ui/screens/order_history_screen.dart';
import 'package:gym_app/features/ui/screens/shopping_screen.dart';
import 'package:gym_app/features/ui/screens/userprofile_screen.dart';
import 'package:gym_app/features/ui/screens/wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppGym',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/shopping': (context) => const ShoppingScreen(),
        '/order-history': (context) => const OrderHistoryScreen(),
        '/userprofile': (context) => const UserprofileScreen(),
        "/wallet": (context) => const WalletScreen(),
      },
    );
  }
}
