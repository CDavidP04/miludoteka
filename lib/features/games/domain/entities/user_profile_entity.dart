class UserProfileEntity {
  final int? id;
  final String? name;
  final String? email;
  final String? avatarPath;
  final DateTime? createdAt;

  UserProfileEntity({
    this.id,
    this.name,
    this.email,
    this.avatarPath,
    this.createdAt,
  });

  UserProfileEntity copyWith({
    int? id,
    String? name,
    String? email,
    String? avatarPath,
    DateTime? createdAt,
  }) {
    return UserProfileEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      avatarPath: avatarPath ?? this.avatarPath,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}