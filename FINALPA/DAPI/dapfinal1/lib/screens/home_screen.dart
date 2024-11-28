import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dapfinal1/core/go_router.dart';
import 'package:dapfinal1/screens/add_movie_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'movie_detail_screen.dart';
import 'movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key); 
  static const String name = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _addMovie() async {
    String title = '';
    String description = '';
    String imageUrl = '';

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pelicula'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Titulo'),
                onChanged: (value) => title = value,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Descripcion'),
                onChanged: (value) => description = value,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'URL de imagen'),
                onChanged: (value) => imageUrl = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (title.isNotEmpty && description.isNotEmpty && imageUrl.isNotEmpty) {
                  await _firestore.collection('movies').add({
                    'title': title,
                    'description': description,
                    'imageUrl': imageUrl,                  
                  });
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Movies',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      
      backgroundColor: Colors.lightBlue,
      
      body: StreamBuilder<QuerySnapshot>(
  stream: _firestore.collection('movies').orderBy('timestamp', descending: true).snapshots(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }

    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
      return const Center(
        child: Text(
          'No movies available',
          style: TextStyle(fontSize: 18),
        ),
      );
    }

    final movies = snapshot.data!.docs.map((doc) {
      return Movie.fromDocument(doc.id, doc.data() as Map<String, dynamic>);
    }).toList();

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),  
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), 
          ),
          elevation: 5,  
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),  
            title: Text(
              movie.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(movie.description),  
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(movie: movie),
                ),
              );
            },
          ),
        );
        
      },     
    );
  },
),
floatingActionButton: FloatingActionButton(
    onPressed: () {
      context.pushNamed(AddMovieScreen.name);
    },
    backgroundColor: const Color.fromARGB(255, 225, 255, 0),
    child: const Icon(Icons.add),  
  ),
    );
    }
    }