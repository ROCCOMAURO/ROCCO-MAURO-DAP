// lib/movie_detail_screen.dart
import 'package:dapfinal1/movie_model.dart';
import 'package:dapfinal1/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = movie.title;
    imageUrlController.text = movie.imageUrl;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Provider.of<MoviesProvider>(context, listen: false).deleteMovie(movie.id);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(movie.imageUrl, height: 200, fit: BoxFit.cover),
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
                Provider.of<MoviesProvider>(context, listen: false).updateMovie(
                  movie.id,
                  titleController.text,
                  imageUrlController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Update Movie'),
            ),
          ],
        ),
      ),
    );
  }
}
