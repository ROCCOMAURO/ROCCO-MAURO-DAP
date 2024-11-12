import 'package:flutter/material.dart';

class EditarItemScreen extends StatefulWidget {
  final String item;

  const EditarItemScreen({super.key, required this.item});

  @override
  _EditarItemScreenState createState() => _EditarItemScreenState();
}

class _EditarItemScreenState extends State<EditarItemScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.item; // Inicializar el campo con el ítem actual
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Editar Ítem',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 69, 61, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo de texto para editar el ítem
            TextField(
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Editar ítem',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botón para guardar el ítem editado
            ElevatedButton(
              onPressed: () {
                // Retorna el nuevo ítem a la pantalla principal
                Navigator.pop(context, _controller.text);
              },
              child: const Text('Guardar'),
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
