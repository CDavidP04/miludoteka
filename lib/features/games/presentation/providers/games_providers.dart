import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/database/database_provider.dart';
import '../../domain/datasource/categories_datasource.dart';
import '../../domain/datasource/games_datasource.dart';
import '../../infrastructure/datasource/categories_local_datasource.dart';
import '../../infrastructure/datasource/game_categories_datasource.dart';
import '../../infrastructure/datasource/games_local_datasource.dart';

final gameCategoriesDatasourceProvider = Provider<GameCategoriesDatasource>((ref) {
  return GameCategoriesLocalDatasource(ref.watch(appDatabaseProvider));
});

final categoriesDatasourceProvider = Provider<CategoriesDatasource>((ref) {
  return CategoriesLocalDatasource(ref.watch(appDatabaseProvider));
});

final gamesLocalDatasourceProvider = Provider<GamesLocalDatasource>((ref) {
  return GamesLocalDatasourceImpl(
    ref.watch(appDatabaseProvider),
    ref.watch(gameCategoriesDatasourceProvider),
  );
});