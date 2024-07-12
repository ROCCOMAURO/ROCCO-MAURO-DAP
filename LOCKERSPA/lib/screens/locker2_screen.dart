import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//import 'package:go_router/go_router.dart';
//import 'package:tp_listview/screens/login_screen.dart';

class Locker2Screen extends StatelessWidget {
  static const String name = 'Locker2';

  const Locker2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   centerTitle: true, title: const Text( 'Locker ', 
      style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  automaticallyImplyLeading: true,
  backgroundColor: const Color.fromARGB(255, 69, 61, 69),
  ),
  body: Container(
      child: SfDateRangePicker(
      startRangeSelectionColor: Colors.purple,
      endRangeSelectionColor: Colors.blue,
      rangeSelectionColor: Colors.grey,
      selectionMode: DateRangePickerSelectionMode.range,
      showActionButtons: true,
      onSubmit: (dateRange) {
        print(dateRange);
      },

  ),
  ) 
  );


  }
  }