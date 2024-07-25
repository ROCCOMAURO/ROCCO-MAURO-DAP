import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String name = 'crearusuario';

  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
appBar: AppBar(
  centerTitle: true,
  title: const Text(
    '¡Bienvenido!',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),

automaticallyImplyLeading: true,
backgroundColor: const Color.fromARGB(255, 69, 61, 69),
),
backgroundColor: const Color.fromARGB(255, 0, 0, 0),






);}}