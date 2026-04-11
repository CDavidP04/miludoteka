import '../entities/entities.dart';

abstract class GamesLocalDatasource {
  Stream<List<GameEntity>> watchAll();
  Stream<List<GameEntity>> watchByStatus(String status);
  Future<GameEntity?> getById(int id);
  Future<int> insert(GameEntity game);
  Future<void> update(GameEntity game);
  Future<void> toggleFavorite(int id, bool current);
  Future<void> updateStatus(int id, String status);
  Future<void> delete(int id);
}
