import '../entities/entities.dart';

abstract class CategoriesDatasource {
  Stream<List<CategoryEntity>> watchAll();
  Future<List<CategoryEntity>> searchByName(String query);
  Future<int> insert(String name);
  Future<void> rename(int id, String newName);
  Future<void> delete(int id);
}