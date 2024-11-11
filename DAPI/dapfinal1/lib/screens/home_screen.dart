// lib/home_screen.dart
import 'package:dapfinal1/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_movie_screen.dart';
import 'movie_detail_screen.dart';

class HomeScreen extends StatelessWidget {
 static const String name = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movies')),
      body: Consumer<MoviesProvider>(
        builder: (context, moviesProvider, child) {
          final movies = moviesProvider.movies;
          if (movies.isEmpty) {
            return Center(child: Text('No movies available'));
          }
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                title: Text(movie.title),
                leading: Image.network(movie.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailScreen(movie: movie),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddMovieScreen()),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
