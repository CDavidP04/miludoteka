class GameEntity {
  final int? id;
  final String title;
  final String? description;
  final int minPlayers;
  final int maxPlayers;
  final int? minPlaytime;
  final int? maxPlaytime;
  final String? imagePath;
  final bool isFavorite;
  final String status;
  final DateTime? createdAt;
  final List<String> categories;

  GameEntity({
    this.id,
    required this.title,
    this.description,
    this.minPlayers = 0,
    this.maxPlayers = 0,
    this.minPlaytime,
    this.maxPlaytime,
    this.imagePath,
    this.isFavorite = false,

    this.status = 'library',
    this.createdAt,
    this.categories = const [],
  });

  GameEntity copyWith({
    int? id,
    String? title,
    String? description,
    int? minPlayers,
    int? maxPlayers,
    int? minPlaytime,
    int? maxPlaytime,
    String? imagePath,
    bool? isFavorite,  
    String? status,
    DateTime? createdAt,
    List<String>? categories,
  }) {
    return GameEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      minPlayers: minPlayers ?? this.minPlayers,
      maxPlayers: maxPlayers ?? this.maxPlayers,
      minPlaytime: minPlaytime ?? this.minPlaytime,
      maxPlaytime: maxPlaytime ?? this.maxPlaytime,
      imagePath: imagePath ?? this.imagePath,
      isFavorite: isFavorite ?? this.isFavorite,    
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      categories: categories ?? this.categories,
    );
  }
}