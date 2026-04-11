import 'package:drift/drift.dart';
import 'games.dart';
import 'players.dart';

class Plays extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get gameId =>
      integer().references(Games, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get playedAt => dateTime().nullable()();
  IntColumn get duration => integer().nullable()(); // minutos reales
  TextColumn get notes => text().nullable()();
  IntColumn get playerCount => integer().nullable()(); // útil para stats
  IntColumn get playerWinner =>
      integer().references(Players, #id, onDelete: KeyAction.cascade)();  
}