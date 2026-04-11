import '../repositories/games_repository.dart';

class UpdateStatusUsecase {
  final GamesRepository _repo;
  UpdateStatusUsecase(this._repo);

  Future<void> call(int id, String status) =>
      _repo.updateStatus(id, status);
}