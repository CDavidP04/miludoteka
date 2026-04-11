import 'package:drift/drift.dart';

import '../../../../config/database/database.dart';

abstract class GameCategoriesDatasource {
  Future<List<String>> getNamesByGame(int gameId);
  Future<void> sync(int gameId, List<String> categoryNames);
}

class GameCategoriesLocalDatasource implements GameCategoriesDatasource {
  final AppDatabase _db;
  GameCategoriesLocalDatasource(this._db);

  @override
  Future<List<String>> getNamesByGame(int gameId) {
    return (_db.select(_db.gameCategories).join([
      innerJoin(
        _db.categories,
        _db.categories.id.equalsExp(_db.gameCategories.categoryId),
      ),
    ])..where(_db.gameCategories.gameId.equals(gameId)))
        .map((row) => row.readTable(_db.categories).name)
        .get();
  }

  @override
  Future<void> sync(int gameId, List<String> categoryNames) async {
    await _db.transaction(() async {
      // 1. limpia relaciones anteriores
      await (_db.delete(_db.gameCategories)
            ..where((gc) => gc.gameId.equals(gameId)))
          .go();

      for (final name in categoryNames) {
        // 2. crea la categoría si no existe
        await _db.into(_db.categories).insert(
              CategoriesCompanion(name: Value(name)),
              mode: InsertMode.insertOrIgnore,
            );

        // 3. obtiene el id de la categoría
        final cat = await (_db.select(_db.categories)
              ..where((c) => c.name.equals(name)))
            .getSingle();

        // 4. vincula con el juego
        await _db.into(_db.gameCategories).insert(
              GameCategoriesCompanion(
                gameId: Value(gameId),
                categoryId: Value(cat.id),
              ),
            );
      }
    });
  }
}