import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'movie_provider.dart';
import 'movie.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({required this.movie, Key? key}) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.movie.title);
    _descriptionController = TextEditingController(text: widget.movie.description);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MovieProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text(widget.movie.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            Image.network(
  widget.movie.imageUrl,
  fit: BoxFit.cover,),

            const SizedBox(height: 16),

            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Titulo'),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Descripcion'),
            ),           
            const SizedBox(height: 16),


            ElevatedButton(
              onPressed: () async {
                widget.movie.title = _titleController.text;
                widget.movie.description = _descriptionController.text;
                await movieProvider.updateMovie(widget.movie);
                Navigator.of(context).pop();
              },
              child: const Text('Actualizar datos'),
            ),
            ElevatedButton(
              onPressed: () async {
                await movieProvider.deleteMovie(widget.movie.id);
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 17, 0)),
              child: const Text(
           'Eliminar',
          style: TextStyle(
           fontSize: 16.0,  
          color: Colors.black,  
    ),
  ),
            ),
          ],
        ),
      ),
    );
  }
}
