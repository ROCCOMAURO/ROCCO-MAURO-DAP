import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Color.fromARGB(255, 216, 99, 213),
        toolbarHeight: 75,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildLockerContainer(
              text: "Locker 1",
              color: const Color.fromARGB(255, 52, 74, 218),
              icon: Icons.lock,
            ),
            _buildLockerContainer(
              text: "Locker 2",
              color: const Color.fromARGB(255, 232, 74, 74),
              icon: Icons.lock_open,
              
              ),

            _buildLockerContainer(
            text: "Locker 3", 
            color: const Color.fromARGB(201, 58, 225, 255), 
            icon: Icons.lock, 
            ),


      ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(225, 60, 243, 43),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {
        context.pushNamed(LoginScreen.name);
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.door_back_door,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 10),
          Text('Cerrar sesion',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),  
        ],
      ),
    )
            ,
          ],
        ),
      ),
    );
  }

  Widget _buildLockerContainer({
    required String text,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


  }

