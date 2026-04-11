import '../repositories/games_repository.dart';

class ToggleFavoriteUsecase {
  final GamesRepository _repo;
  ToggleFavoriteUsecase(this._repo);

  Future<void> call(int id, bool current) =>
      _repo.toggleFavorite(id, current);
}