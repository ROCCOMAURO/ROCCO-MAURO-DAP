// lib/movies_provider.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'movie_model.dart';

class MoviesProvider with ChangeNotifier {
  final CollectionReference _moviesCollection =
      FirebaseFirestore.instance.collection('Movies');
  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  MoviesProvider() {
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    final snapshot = await _moviesCollection.get();
    _movies = snapshot.docs
        .map((doc) => Movie.fromMap(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
    notifyListeners();
  }

  Future<void> addMovie(String title, String imageUrl) async {
    final newMovie = {'title': title, 'imageUrl': imageUrl};
    await _moviesCollection.add(newMovie);
    fetchMovies();
  }

  Future<void> updateMovie(String id, String title, String imageUrl) async {
    await _moviesCollection.doc(id).update({'title': title, 'imageUrl': imageUrl});
    fetchMovies();
  }

  Future<void> deleteMovie(String id) async {
    await _moviesCollection.doc(id).delete();
    fetchMovies();
  }
}
