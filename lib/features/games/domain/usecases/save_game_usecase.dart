import '../entities/entities.dart';
import '../repositories/games_repository.dart';

class SaveGameUsecase {
  final GamesRepository _repo;
  SaveGameUsecase(this._repo);

  /// Retorna el id generado (útil en insert)
  Future<int> call(GameEntity game) => _repo.save(game);
}