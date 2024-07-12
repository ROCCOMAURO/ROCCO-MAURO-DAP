import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/locker1_screen.dart';
//import 'package:tp_listview/screens/locker1_screen.dart';
import 'package:tp_listview/screens/locker2_screen.dart';
import 'package:tp_listview/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
appBar: AppBar(
  centerTitle: true,
  title: const Text(
    'Safe Safe',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),

          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 69, 61, 69),
        ),
        
     
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      
  
  body: Padding(
        padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 


   ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(222, 0, 0, 0),  
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          ),
                ),
      onPressed: () {
        context.pushNamed(Locker1Screen.name);   
    }, 
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(222, 58, 58, 209)
      ),
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 10),
          Text(
            'Locker 1',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    )
    
    ),
          

    ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(222, 0, 0, 0), 
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          ),
                ),
      onPressed: () {
        context.pushNamed(Locker2Screen.name);   
    }, 
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(222, 58, 58, 209)
      ),
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Icon(
              Icons.lock,
              color: Colors.white,
              size: 30,
            ),
          SizedBox(width: 10),
          Text(
            'Locker 2',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    )
    
    ),
          
    ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(222, 0, 0, 0),  
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          ),
                ),
      onPressed: () {
           const Locker3 = SnackBar(
          duration: Duration(seconds: 2),
          content: Text('¡Proximamente!'),
          backgroundColor: Colors.deepOrange,
          );
    ScaffoldMessenger.of(context).showSnackBar(Locker3);
    }, 
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(222, 58, 58, 209)
      ),
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 10),
          Text(
            'Locker 3',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    )
    
    ),
          
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(225, 60, 243, 43),  
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
                ),
         onPressed: () {
          context.pushNamed(LoginScreen.name);
          const deslogin = SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Cerraste sesion'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(deslogin);
                },
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Icon(
              Icons.door_back_door_outlined,
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

}
