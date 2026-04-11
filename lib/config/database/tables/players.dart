import 'package:drift/drift.dart';

class Players extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().customConstraint('NOT NULL UNIQUE')();
  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();
}