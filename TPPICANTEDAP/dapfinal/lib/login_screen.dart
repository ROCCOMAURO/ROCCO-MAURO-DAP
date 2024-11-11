//import 'package:firebase_flutter_proyectlockers/screens/teneslocker.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:go_router/go_router.dart';

//import 'home_screen.dart';
//import 'crearuser.dart';
//import 'contrauser.dart';

class LoginScreen extends StatefulWidget {
  static const String name = 'login';
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
   body:      
   ListView(
   children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(
    controller: userController,
    decoration: const InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Email',
    icon: Icon(Icons.person),
    iconColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
  ),  ),
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
      borderRadius: BorderRadius.all(Radius.circular(10)),
       ),
      ),
    obscureText: true,
    ),
      const SizedBox(height: 20),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    ElevatedButton(
    onPressed: () {
    //context.pushNamed(UserScreen.name);
    },
    style: ElevatedButton.styleFrom(
     backgroundColor: Colors.black,
                      ),                  
      child: const Text(
      'Crear usuario',
      style: TextStyle(
      fontSize: 14,
      color: Colors.red,
        fontWeight: FontWeight.bold,
  ),  ), ),
 const SizedBox(width: 7),

  ElevatedButton(
  onPressed: () {
    //context.pushNamed(ContraScreen.name);
    },
    style: ElevatedButton.styleFrom(
     backgroundColor: Colors.black,
    ),
      child: const Text(
      '¿Olvidaste tu contraseña?',
        style: TextStyle(
        fontSize: 14,
        color: Colors.red,
        fontWeight: FontWeight.bold,
  ),), ),
    ], ),
      const SizedBox(height: 40),
      
  const SizedBox(height: 20),

  Container(
  margin: const EdgeInsets.symmetric(vertical: 10.0),
  padding: const EdgeInsets.all(10.0),
  width: double.infinity,
  height: 70,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(16),
  color: const Color.fromARGB(222, 127, 127, 133),
  ),
  
  alignment: Alignment.topCenter,
)
]))]));}}

    
      
    