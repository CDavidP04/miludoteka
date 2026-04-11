class CategoryEntity {
  final int? id;
  final String name;
  final DateTime? createdAt;

  CategoryEntity({
    this.id,
    required this.name,
    this.createdAt,
  });

  CategoryEntity copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
  }) {
    return CategoryEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}