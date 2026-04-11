class PlayerEntity {
  final int? id;
  final String name;
  final DateTime? createdAt;

  PlayerEntity({
    this.id,
    required this.name,
    this.createdAt,
  });

  PlayerEntity copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
  }) {
    return PlayerEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}