import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/database/database_provider.dart';
import '../../domain/datasource/categories_datasource.dart';
import '../../domain/datasource/games_datasource.dart';
import '../../infrastructure/datasource/categories_local_datasource.dart';
import '../../infrastructure/datasource/game_categories_datasource.dart';
import '../../infrastructure/datasource/games_local_datasource.dart';

final gameCategoriesDatasourceProvider = Provider<GameCategoriesDatasource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return GameCategoriesLocalDatasource(db);
});

final gamesLocalDatasourceProvider = Provider<GamesLocalDatasource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  final cats = ref.watch(gameCategoriesDatasourceProvider);
  return GamesLocalDatasourceImpl(db, cats);
});

final categoriesDatasourceProvider = Provider<CategoriesDatasource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return CategoriesLocalDatasource(db);
});