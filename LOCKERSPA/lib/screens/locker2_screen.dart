import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';
//import 'package:tp_listview/screens/login_screen.dart';

class Locker2Screen extends StatelessWidget {
  static const String name = 'Locker2';

  const Locker2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locker 2',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ), 
        backgroundColor: const Color.fromARGB(255, 216, 99, 213),
        toolbarHeight: 60,
        automaticallyImplyLeading: true,
      ));


  }
  }