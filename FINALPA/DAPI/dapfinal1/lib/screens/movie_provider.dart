import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'movie.dart';

class MovieProvider with ChangeNotifier {
  Future<void> updateMovie(Movie movie) async {
    await FirebaseFirestore.instance.collection('movies').doc(movie.id).update({
      'title': movie.title,
      'description': movie.description,
      'imageUrl': movie.imageUrl,
    });
    notifyListeners();
  }

  Future<void> deleteMovie(String id) async {
    await FirebaseFirestore.instance.collection('movies').doc(id).delete();
    notifyListeners();
  }
}
