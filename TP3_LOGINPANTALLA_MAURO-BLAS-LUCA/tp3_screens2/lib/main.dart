import 'package:flutter/material.dart';

import 'core/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
       routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      ); 
  }
}