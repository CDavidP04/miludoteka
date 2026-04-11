import '../repositories/games_repository.dart';

class DeleteGameUsecase {
  final GamesRepository _repo;
  DeleteGameUsecase(this._repo);

  Future<void> call(int id) => _repo.delete(id);

}