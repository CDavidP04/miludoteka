import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/entities.dart';
import 'usecase_providers.dart';

class GamesNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<int> save(GameEntity game) =>
      ref.read(saveGameUsecaseProvider).call(game);

  Future<void> delete(int id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(deleteGameUsecaseProvider).call(id),
    );
  }

  Future<void> toggleFavorite(int id, bool current) =>
      ref.read(toggleFavoriteUsecaseProvider).call(id, current);

  Future<void> updateStatus(int id, String status) =>
      ref.read(updateStatusUsecaseProvider).call(id, status);
}

final gamesNotifierProvider =
    AsyncNotifierProvider<GamesNotifier, void>(GamesNotifier.new);