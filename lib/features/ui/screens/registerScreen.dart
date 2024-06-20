import 'package:flutter/material.dart';
import 'package:gym_app/features/ui/index.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 63, 187, 133),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  20), // Ajusta el valor para más o menos redondeo
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Registrate",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 20),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Correo electronico",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: emailController,
                        hintText: "correo@gmail.com",
                        prefixIcon: Icons.person_outlined,
                        prefixIconColor: Colors.black,
                        hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                        enabledBorderColor:
                            const Color.fromARGB(255, 239, 239, 239),
                        fillColor: const Color.fromARGB(255, 255, 251, 251),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Contraseña",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        obsCureText: true,
                        controller: passwordController,
                        hintText: "***********",
                        prefixIcon: Icons.lock_outline_rounded,
                        prefixIconColor: Colors.black,
                        hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                        enabledBorderColor:
                            const Color.fromARGB(255, 239, 239, 239),
                        fillColor: const Color.fromARGB(255, 255, 251, 251),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirmar contraseña",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        obsCureText: true,
                        controller: passwordController,
                        hintText: "***********",
                        prefixIcon: Icons.lock_outline_rounded,
                        prefixIconColor: Colors.black,
                        hintTextColor: const Color.fromARGB(255, 119, 113, 113),
                        enabledBorderColor:
                            const Color.fromARGB(255, 239, 239, 239),
                        fillColor: const Color.fromARGB(255, 255, 251, 251),
                      ),
                      
                      const SizedBox(
                        height: 5,
                      ),
                      CustomElevatedButton(
                        text: 'Entrar',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                          // print("press");
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("¿Ya tienes una cuenta?"),
                          TextButton(
                            onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                            child: const Text("Inicia sesión aquí"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
