// lib/add_movie_screen.dart
import 'package:dapfinal1/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddMovieScreen extends StatelessWidget {
  static const String name = 'addMovie';
  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Movie')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: imageUrlController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<MoviesProvider>(context, listen: false).addMovie(
                  titleController.text,
                  imageUrlController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Add Movie'),
            ),
          ],
        ),
      ),
    );
  }
}
