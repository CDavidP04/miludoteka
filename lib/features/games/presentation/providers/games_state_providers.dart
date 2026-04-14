import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/entities.dart';
import 'usecase_providers.dart';

final gamesStreamProvider = StreamProvider<List<GameEntity>>((ref) {
  return ref.watch(watchGamesUsecaseProvider)();
});

final gamesByStatusProvider =
    StreamProvider.family<List<GameEntity>, String>((ref, status) {
  return ref.watch(watchGamesUsecaseProvider)(status: status);
});

final favoriteGamesProvider = Provider<AsyncValue<List<GameEntity>>>((ref) {
  return ref.watch(gamesStreamProvider).whenData(
    (games) => games.where((g) => g.isFavorite).toList(),
  );
});