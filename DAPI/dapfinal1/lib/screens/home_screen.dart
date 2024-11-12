import 'package:dapfinal1/screens/AgregarItemScreen.dart';
import 'package:dapfinal1/screens/EditarItemScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Lista para almacenar los elementos
  List<String> _items = [];

  // Método para agregar un ítem a la lista
  void _agregarItem(String item) {
    setState(() {
      _items.add(item);
    });
  }

  // Método para eliminar un ítem
  void _eliminarItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  // Método para editar un ítem
  void _editarItem(int index, String nuevoItem) {
    setState(() {
      _items[index] = nuevoItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 69, 61, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Lista de ítems
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _items[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        _eliminarItem(index);
                      },
                    ),
                    onTap: () async {
                      // Navegar a la pantalla de edición
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditarItemScreen(
                            item: _items[index],
                          ),
                        ),
                      );

                      // Si se recibe un resultado (nuevo ítem), lo actualizamos
                      if (result != null && result.isNotEmpty) {
                        _editarItem(index, result);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Botón flotante para navegar a la pantalla de agregar ítem
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navegar a la pantalla de agregar ítem
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AgregarItemScreen()),
          );

          // Si se recibe un resultado (un ítem), lo agregamos a la lista
          if (result != null && result.isNotEmpty) {
            _agregarItem(result);
          }
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 69, 61, 69),
      ),
    );
  }
}

