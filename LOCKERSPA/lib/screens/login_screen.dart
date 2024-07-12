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
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      
      body: ListView(
        children: [
          
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset("assets/images/oso.jpg"),
              ),
              const SizedBox(height: 20),

              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Usuario',
                  icon: Icon(Icons.person),
                  iconColor: Colors.white,
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
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Contraseña',
                  icon: Icon(Icons.lock),
                  iconColor: Colors.white,

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Crear usuario',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
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
                      backgroundColor: Colors.deepOrange,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logVacio);
                  } else {
                    if (!users.contains(textoingresadouser) || !passwords.contains(textoingresadopass)) {
                      const logInFallido = SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text('Usuario y/o contraseña incorrectos'),
                        backgroundColor: Colors.deepOrange,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(logInFallido);
                    } else {
                      int user = users.indexOf(textoingresadouser);
                      if (users[user] == textoingresadouser && passwords[user] == textoingresadopass) {
                        context.pushNamed(HomeScreen.name);
                        const logInExitoso = SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('¡Bienvenido de vuelta!'),
                          backgroundColor: Colors.deepOrange,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                      }
                    }
                  }
                },
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),

        ] 
        
      ),
    );
  }
}
