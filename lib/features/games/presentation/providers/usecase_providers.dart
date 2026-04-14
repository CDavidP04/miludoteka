import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/delete_game_usecase.dart';
import '../../domain/usecases/save_game_usecase.dart';
import '../../domain/usecases/toggle_favorite_usecase.dart';
import '../../domain/usecases/update_status_usecase.dart';
import '../../domain/usecases/watch_games_usecase.dart';
import 'repository_providers.dart';

final watchGamesUsecaseProvider = Provider((ref) =>
    WatchGamesUsecase(ref.watch(gamesRepositoryProvider)));

final saveGameUsecaseProvider = Provider((ref) =>
    SaveGameUsecase(ref.watch(gamesRepositoryProvider)));

final deleteGameUsecaseProvider = Provider((ref) =>
    DeleteGameUsecase(ref.watch(gamesRepositoryProvider)));

final toggleFavoriteUsecaseProvider = Provider((ref) =>
    ToggleFavoriteUsecase(ref.watch(gamesRepositoryProvider)));

final updateStatusUsecaseProvider = Provider((ref) =>
    UpdateStatusUsecase(ref.watch(gamesRepositoryProvider)));