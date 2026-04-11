import '../../../../config/database/database.dart';
import '../../domain/datasource/games_datasource.dart';
import '../../domain/entities/entities.dart';
import '../mappers/game_mapper.dart';
import 'game_categories_datasource.dart';

class GamesLocalDatasourceImpl implements GamesLocalDatasource {
  final AppDatabase _db;
  final GameCategoriesDatasource _gameCategories;

  GamesLocalDatasourceImpl(this._db, this._gameCategories);

  Future<GameEntity> _withCategories(Game drift) async {
    final cats = await _gameCategories.getNamesByGame(drift.id);
    return GameMapper.fromDrift(drift, categories: cats);
  }

  @override
  Future<int> insert(GameEntity game) async {
    return _db.transaction(() async {
      final id = await _db
          .into(_db.games)
          .insert(GameMapper.toDriftCompanion(game));
      await _gameCategories.sync(id, game.categories);
      return id;
    });
  }

  @override
  Future<void> update(GameEntity game) async {
    await _db.transaction(() async {
      await (_db.update(_db.games)
            ..where((g) => g.id.equals(game.id!)))
          .write(GameMapper.toDriftCompanion(game));
      await _gameCategories.sync(game.id!, game.categories);
    });
  }
  
  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
  
  @override
  Future<GameEntity?> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }
  
  @override
  Future<void> toggleFavorite(int id, bool current) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
  
  @override
  Future<void> updateStatus(int id, String status) {
    // TODO: implement updateStatus
    throw UnimplementedError();
  }
  
  @override
  Stream<List<GameEntity>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
  
  @override
  Stream<List<GameEntity>> watchByStatus(String status) {
    // TODO: implement watchByStatus
    throw UnimplementedError();
  }

  // ... resto igual que antes
}