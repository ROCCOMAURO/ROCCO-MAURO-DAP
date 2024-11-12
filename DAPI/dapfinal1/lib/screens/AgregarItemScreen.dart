import 'package:flutter/material.dart';

class AgregarItemScreen extends StatefulWidget {
  const AgregarItemScreen({super.key});

  @override
  _AgregarItemScreenState createState() => _AgregarItemScreenState();
}

class _AgregarItemScreenState extends State<AgregarItemScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Agregar Ítem',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 69, 61, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo de texto para ingresar un nuevo ítem
            TextField(
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Ingrese un ítem',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botón para confirmar el ingreso del ítem
            ElevatedButton(
              onPressed: () {
                // Retorna el ítem ingresado a la pantalla principal
                Navigator.pop(context, _controller.text);
              },
              child: const Text('Agregar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 69, 61, 69),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
