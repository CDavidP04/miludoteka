import 'package:drift/drift.dart';

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
    final categories = await _gameCategories.getNamesByGame(drift.id);
    return GameMapper.fromDrift(drift, categories: categories);
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
  Future<void> delete(int id) async{
    await (_db.delete(_db.games)..where((g) => g.id.equals(id))).go();
  }
  
  @override
  Future<GameEntity?> getById(int id) async{
    final drift = await (_db.select(_db.games)
          ..where((g) => g.id.equals(id)))
        .getSingleOrNull();
 
    if (drift == null) return null;
    return _withCategories(drift);
  }
  
  @override
  Future<void> toggleFavorite(int id, bool current) async {
    await (_db.update(_db.games)..where((g) => g.id.equals(id)))
        .write(GamesCompanion(isFavorite: Value(!current)));
  }
  
  @override
  Future<void> updateStatus(int id, String status) async {
    await (_db.update(_db.games)..where((g) => g.id.equals(id)))
        .write(GamesCompanion(status: Value(status)));
  }
  
  @override
  Stream<List<GameEntity>> watchAll() {
    return _db.select(_db.games).watch().asyncMap(
          (rows) => Future.wait(rows.map(_withCategories)),
        );
  }
  
  @override
  Stream<List<GameEntity>> watchByStatus(String status) {
    return (_db.select(_db.games)
          ..where((g) => g.status.equals(status)))
        .watch()
        .asyncMap(
          (rows) => Future.wait(rows.map(_withCategories)),
        );
  }
}