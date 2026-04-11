import 'package:drift/drift.dart';

import '../../../../config/database/database.dart';
import '../../domain/datasource/categories_datasource.dart';
import '../../domain/entities/entities.dart';

class CategoriesLocalDatasource implements CategoriesDatasource {
  final AppDatabase _db;
  CategoriesLocalDatasource(this._db);

  @override
  Stream<List<CategoryEntity>> watchAll() {
    return _db.select(_db.categories).watch().map(
          (rows) => rows
              .map((c) => CategoryEntity(id: c.id, name: c.name))
              .toList(),
        );
  }

  @override
  Future<List<CategoryEntity>> searchByName(String query) async {
    final rows = await (_db.select(_db.categories)
          ..where((c) => c.name.contains(query)))
        .get();
    return rows.map((c) => CategoryEntity(id: c.id, name: c.name)).toList();
  }

  @override
  Future<int> insert(String name) {
    return _db.into(_db.categories).insert(
          CategoriesCompanion(name: Value(name)),
          mode: InsertMode.insertOrIgnore,
        );
  }

  @override
  Future<void> rename(int id, String newName) {
    return (_db.update(_db.categories)..where((c) => c.id.equals(id)))
        .write(CategoriesCompanion(name: Value(newName)));
  }

  @override
  Future<void> delete(int id) {
    return (_db.delete(_db.categories)..where((c) => c.id.equals(id))).go();
  }
}