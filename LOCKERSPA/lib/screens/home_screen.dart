import 'package:flutter/material.dart';
import 'package:tp_listview/screens/login_screen.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: Colors.white),),
        backgroundColor:const Color.fromARGB(255, 246, 32, 218),
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
              icon: Icons.lock,
              ),

            _buildLockerContainer(
            text: "Locker 3", 
            color: const Color.fromARGB(201, 58, 225, 255), 
            icon: Icons.lock, 
            ),

            
            
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
  


class test extends StatelessWidget {
  const test({
    super.key,
    required String text,
    required Color color,
    required IconData icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(40), backgroundColor: const Color(20),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        ),
        elevation: 5,
      ),
      onPressed: () {
        context.go(LoginScreen.name);     
      },

      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock, size: 24),
          SizedBox(width: 10),
          Text('Cerrar sesión',style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
