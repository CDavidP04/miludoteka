import 'package:drift/drift.dart';

import 'categories.dart';
import 'games.dart';

class GameCategories extends Table {
  IntColumn get gameId =>
      integer().references(Games, #id, onDelete: KeyAction.cascade)();

  IntColumn get categoryId =>
      integer().references(Categories, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {gameId, categoryId};
}