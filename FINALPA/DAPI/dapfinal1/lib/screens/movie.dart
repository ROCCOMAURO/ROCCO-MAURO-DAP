class Movie {
  String id;
  String title;
  String description;
  String imageUrl;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Movie.fromDocument(String id, Map<String, dynamic> data) {
    return Movie(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '', 
      imageUrl: '',    
    );
  }
}
