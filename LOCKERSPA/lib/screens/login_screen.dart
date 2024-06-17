import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/home_screen.dart';

List<String> users = ['Blas', 'Rocco', 'Luca'];
List<String> passwords = ['123', '456', '789'];

class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        body: Center(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    hintText: 'Usuario',
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                  ),
                ),
                const SizedBox(height: 20), 
                
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                  hintText: 'Contraseña',
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                  ),
                  obscureText: true, 
              ),
              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromARGB(255, 250, 23, 15),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              

              ElevatedButton(
                onPressed: () {
                  String textoingresadouser = userController.text;
                  String textoingresadopass = passwordController.text;

                  if (textoingresadouser.isEmpty || textoingresadopass.isEmpty) {
                    const logVacio = SnackBar(
                      duration: Duration(seconds: 3),
                      content: Text('Campos vacíos'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logVacio);
                  } else {
                    if (!users.contains(textoingresadouser) || !passwords.contains(textoingresadopass)) {
                      const logInFallido = SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text('Usuario y/o contraseña incorrectos'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(logInFallido);
                    } else {
                      int user = users.indexOf(textoingresadouser);
                      if (users[user] == textoingresadouser && passwords[user] == textoingresadopass) {
                        context.pushNamed(HomeScreen.name);
                        const logInExitoso = SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('¡Bienvenido devuelta!'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                      } 
                    }
                  }
                },
                child: const Text('Iniciar sesión'),
              ),
            ],
            )
          ),
        ),
    )
    ;
  }
}