import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


// ignore: must_be_immutable
class Locker2Screen extends StatefulWidget {
  static const String name = 'Locker2';

  Locker2Screen({super.key});

  List<String> horarios = [
    '8 am',
    '9 am',
    '10 am',
    '11 am',
    '12 pm',
    '1 pm',
    '2 pm',
    '3 pm',
    '4 pm',
    '5 pm',
    '6 pm',
    '7 pm',
    '8 pm',   
  ];

  @override
  // ignore: library_private_types_in_public_api
  _Locker1ScreenState createState() => _Locker1ScreenState();
}

class _Locker1ScreenState extends State<Locker2Screen> {
  DateTime _selectedDay = DateTime.now();
  int _selectedIndex = 0 ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Locker 2',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.month,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
            },
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Horarios disponibles',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),

          Expanded(
            child: ListView.builder(
        itemCount: widget.horarios.length,
        itemBuilder: (context, index) {
          return RadioListTile<int>(   //item seleccionables
            title: Text(widget.horarios[index]),
            groupValue: _selectedIndex,  //que item esta seleccionado
            value: index, 
            onChanged: (int? value) {
              setState(() { //avisa que se selecciono un item y lo actualiza
                _selectedIndex = value!;  //que unicamente se ejecute cuando se seleccione alguna opcion, es decir que value no sea null xd.
              });
            },
          );
          }
          )
          ),


        ElevatedButton(
          onPressed: () {
          const reserva = SnackBar(
          duration: Duration(seconds: 2),
          content: Text('Reserva realizada con éxito'),
          backgroundColor: Colors.deepOrange,
          );
          ScaffoldMessenger.of(context).showSnackBar(reserva);
          },  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  ),                  
                  child: const Text(
                    'Listo',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 63, 54, 244),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),   
        ],
      ),
    );
  }
}