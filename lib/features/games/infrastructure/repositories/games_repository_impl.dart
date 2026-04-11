import '../../domain/datasource/games_datasource.dart';
import '../../domain/entities/game_entity.dart';
import '../../domain/repositories/games_repository.dart';

class GamesRepositoryImpl implements GamesRepository {
  final GamesLocalDatasource _local;
  //final GamesRemoteDatasource _remote;

  GamesRepositoryImpl({
    required GamesLocalDatasource local,
    //required GamesRemoteDatasource remote,
  })  : _local = local;
        //_remote = remote;


  @override
  Stream<List<GameEntity>> watchAll() => _local.watchAll();

  @override
  Stream<List<GameEntity>> watchByStatus(String status) =>
      _local.watchByStatus(status);

  @override
  Future<GameEntity?> getById(int id) => _local.getById(id);

  @override
  Future<int> save(GameEntity game) async {
    if (game.id == null) {
      return _local.insert(game);
    } else {
      await _local.update(game);
      return game.id!;
    }
  }

  @override
  Future<void> toggleFavorite(int id, bool current) =>
      _local.toggleFavorite(id, current);

  @override
  Future<void> updateStatus(int id, String status) =>
      _local.updateStatus(id, status);

  @override
  Future<void> delete(int id) => _local.delete(id);

  // ── Sync Supabase ────────────────────────────────────────
  @override
  Future<void> syncToRemote(int gameId) async {
     throw UnimplementedError();
    //final game = await _local.getById(gameId);
    //if (game != null) await _remote.upsert(game);
  }

  @override
  Future<void> pullFromRemote() async {
    throw UnimplementedError();
    //final remoteGames = await _remote.fetchAll();
    //for (final game in remoteGames) {
      //await _local.insert(game);   // insertOrIgnore evita duplicados
    //}
  }
}