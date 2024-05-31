import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  
  // Corregir el constructor
  const HomeScreen({super.key});

@override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Home"),  
        backgroundColor: Colors.lightGreen
      ),  

      body: Column(  

          mainAxisAlignment: MainAxisAlignment.center,
    
          children:<Widget>[  
            Container(
              margin: EdgeInsets.all(20.0),  
              width: double.infinity,
              height: 150,   
              decoration:BoxDecoration(  
              borderRadius:BorderRadius.circular(8), 
               
              color:Color.fromARGB(255, 129, 127, 248)  
              ),  
              child: Text("Locker 1", style: TextStyle(fontSize:20),),
              alignment: Alignment.center    
            ), 

            Container(  
              margin: EdgeInsets.all(20.0),  
              width: double.infinity,
              height: 150, 
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                 color:Color.fromARGB(255, 129, 127, 248)   
              ),  
              child: Text("Locker 2", style: TextStyle(fontSize:20), ),
              alignment: Alignment.center 
            ), 

            Container(  
              margin: EdgeInsets.all(20.0),  
              width: double.infinity,
              height: 100,  
              decoration:BoxDecoration(  
              borderRadius:BorderRadius.circular(8),  
              color:Color.fromARGB(255, 129, 127, 248)  
              ),  
              child: Text("Cerrar sesión",  style: TextStyle(fontSize:20),), 
              alignment: Alignment.center 
            )  
          ]  
      ),  
    );  
  }  
} 