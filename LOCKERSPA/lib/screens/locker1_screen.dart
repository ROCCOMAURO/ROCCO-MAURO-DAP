import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class Locker1Screen extends StatelessWidget {
  static const String name = 'Locker1';

  Locker1Screen({super.key});

  DateTime today = DateTime.now();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Locker 1',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 69, 61, 69),
      ),
      body: Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2024, 04, 10),
          lastDay: DateTime.utc(2024, 12, 31), 
          focusedDay: today,
          calendarFormat: CalendarFormat.month,
          headerStyle: 
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),          
          ),
    
      ]
        
    ));
  }
}
