import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/login_screen.dart';

class Locker1Screen extends StatelessWidget {
  static const String name = 'Locker1';

  const Locker1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locker 1',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ), 
        backgroundColor: const Color.fromARGB(255, 216, 99, 213),
        toolbarHeight: 60,
        
        automaticallyImplyLeading: false,
      ));


  }
  }
