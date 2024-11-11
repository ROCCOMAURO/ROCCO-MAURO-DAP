// lib/movie_model.dart
class Movie {
  String id;
  String title;
  String imageUrl;

  Movie({required this.id, required this.title, required this.imageUrl});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map, String documentId) {
    return Movie(
      id: documentId,
      title: map['title'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }
}
