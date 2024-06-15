import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 91, 92, 80),
        toolbarHeight: 75,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                      
              Lockers(
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
            _buildLogoutButton(
              text: "Cerrar sesión",
              color: const Color.fromARGB(255, 246, 32, 218),
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }

  Widget Lockers({
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

  Widget _buildLogoutButton({
    required String text,
    required Color color,
    required IconData icon,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 5,
      ),
      onPressed: () {
        // Acción para cerrar sesión
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
