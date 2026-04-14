import '../entities/entities.dart';

abstract class GamesRepository {
  // ── Reactivo ────────────────────────────────────────────
  Stream<List<GameEntity>> watchAll();
  // STATUS: "Library", "Wishlist""
  Stream<List<GameEntity>> watchByStatus(String status);

  // ── Queries ─────────────────────────────────────────────
  Future<GameEntity?> getById(int id);

  // ── Mutaciones ──────────────────────────────────────────
  /// insert si id == null, update si tiene id
  Future<int> save(GameEntity game);
  Future<void> toggleFavorite(int id, bool current);
  Future<void> updateStatus(int id, String status);
  Future<void> delete(int id);

  // ── Sync Supabase ────────────────────────────────────────
  Future<void> syncToRemote(int gameId);
  Future<void> pullFromRemote();
}