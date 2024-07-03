import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/index.dart';
import 'package:gym_app/features/ui/widgets/custom_app_bar.dart';
import 'package:gym_app/features/ui/widgets/custom_drawer.dart';
import 'package:gym_app/utils/app_colors.dart';

class UserprofileScreen extends StatefulWidget {
  const UserprofileScreen({super.key});

  @override
  State<UserprofileScreen> createState() => _UserprofileScreenState();
}

class _UserprofileScreenState extends State<UserprofileScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary,
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                ),
                Container(
                  height: 50,
                  color: Colors.teal,
                ),
                Positioned(
                  bottom: 10,
                  left: MediaQuery.of(context).size.width / 2 - 40,
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nombre(s)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CustomTextField(
                      controller: firstNameController,
                      hintText: "Juan",
                      prefixIcon: Icons.person_outlined,
                      prefixIconColor: Colors.black,
                      hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                      enabledBorderColor:
                          const Color.fromARGB(255, 239, 239, 239),
                      fillColor: const Color.fromARGB(255, 255, 251, 251),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Apellido(s)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CustomTextField(
                      obsCureText: true,
                      controller: lastNameController,
                      hintText: "Perez",
                      prefixIcon: Icons.lock_outline_rounded,
                      prefixIconColor: Colors.black,
                      hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                      enabledBorderColor:
                          const Color.fromARGB(255, 239, 239, 239),
                      fillColor: const Color.fromARGB(255, 255, 251, 251),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Número de teléfono",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CustomTextField(
                      controller: phoneNumberController,
                      hintText: "99 9234 5678",
                      prefixIcon: Icons.phone,
                      prefixIconColor: Colors.black,
                      hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                      enabledBorderColor:
                          const Color.fromARGB(255, 239, 239, 239),
                      fillColor: const Color.fromARGB(255, 255, 251, 251),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomElevatedButton(
                      text: 'Guardar',
                      textStyle: const TextStyle(
                        color: AppColors.textColorSecondary,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
