import '../entities/entities.dart';
import '../repositories/games_repository.dart';

class WatchGamesUsecase {
  final GamesRepository _repo;
  WatchGamesUsecase(this._repo);

  Stream<List<GameEntity>> call({String? status}) =>
      status != null ? _repo.watchByStatus(status) : _repo.watchAll();
}