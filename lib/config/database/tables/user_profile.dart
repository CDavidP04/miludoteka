import 'package:drift/drift.dart';
class UserProfile extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get avatar => text().nullable()();
}