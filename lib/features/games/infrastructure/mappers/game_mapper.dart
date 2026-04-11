import 'package:drift/drift.dart';

import '../../../../config/database/database.dart';
import '../../domain/entities/entities.dart';
class GameMapper {
  GameMapper._(); // no instanciable

  // ── Drift → Entity ─────────────────────────────────────────
  static GameEntity fromDrift(Game drift, {List<String> categories = const []}) {
    return GameEntity(
      id: drift.id,
      title: drift.title,
      description: drift.description,
      minPlayers: drift.minPlayers,
      maxPlayers: drift.maxPlayers,
      minPlaytime: drift.minPlaytime,
      maxPlaytime: drift.maxPlaytime,
      imagePath: drift.imagePath,
      isFavorite: drift.isFavorite,  
      status: drift.status,
      createdAt: drift.createdAt,
      categories: categories,
    );
  }

  // ── Entity → Drift Companion ───────────────────────────────
  static GamesCompanion toDriftCompanion(GameEntity e) {
    return GamesCompanion(
      id: e.id != null ? Value(e.id!) : const Value.absent(),
      title: Value(e.title),
      description: Value(e.description),
      minPlayers: Value(e.minPlayers),
      maxPlayers: Value(e.maxPlayers),
      minPlaytime: Value(e.minPlaytime),
      maxPlaytime: Value(e.maxPlaytime),
      imagePath: Value(e.imagePath),
      isFavorite: Value(e.isFavorite),    
      status: Value(e.status),
    );
  }

  // ── Supabase Map → Entity ──────────────────────────────────
  static GameEntity fromSupabase(Map<String, dynamic> json) {
    return GameEntity(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String?,
      minPlayers: json['min_players'] as int,
      maxPlayers: json['max_players'] as int,
      minPlaytime: json['min_playtime'] as int?,
      maxPlaytime: json['max_playtime'] as int?,
      imagePath: json['image_path'] as String?,
      isFavorite: json['is_favorite'] as bool? ?? false,    
      status: json['status'] as String? ?? 'library',
      categories: const [],
    );
  }

  // ── Entity → Supabase Map ──────────────────────────────────
  static Map<String, dynamic> toSupabaseMap(GameEntity e) {
    return {
      if (e.id != null) 'id': e.id,
      'title': e.title,
      'description': e.description,
      'min_players': e.minPlayers,
      'max_players': e.maxPlayers,
      'min_playtime': e.minPlaytime,
      'max_playtime': e.maxPlaytime,
      'image_path': e.imagePath,
      'is_favorite': e.isFavorite,      
      'status': e.status,
    };
  }
}
