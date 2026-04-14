import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/games_repository.dart';
import '../../infrastructure/repositories/games_repository_impl.dart';
import 'datasource_providers.dart';

final gamesRepositoryProvider = Provider<GamesRepository>((ref) {
  final local = ref.watch(gamesLocalDatasourceProvider);
  return GamesRepositoryImpl(local: local);
});