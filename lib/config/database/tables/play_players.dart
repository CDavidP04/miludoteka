import 'package:drift/drift.dart';
import 'players.dart';
import 'plays.dart';

class PlayPlayers extends Table {
  IntColumn get playId =>
      integer().references(Plays, #id, onDelete: KeyAction.cascade)();

  IntColumn get playerId =>
      integer().references(Players, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {playId, playerId};
}