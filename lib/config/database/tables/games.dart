import 'package:drift/drift.dart';

class Games extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().customConstraint('NOT NULL UNIQUE')();
  TextColumn get description => text().nullable()();
  IntColumn get minPlayers => integer()();
  IntColumn get maxPlayers => integer()();
  IntColumn get minPlaytime => integer().nullable()(); // minutos
  IntColumn get maxPlaytime => integer().nullable()();
  TextColumn get imagePath => text().nullable()(); // local o URL
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();  
  TextColumn get status => text().withDefault(const Constant('library'))();  
  DateTimeColumn get createdAt =>
    dateTime().withDefault(currentDateAndTime)();
}