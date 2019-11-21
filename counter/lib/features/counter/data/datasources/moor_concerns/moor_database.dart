import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Counter extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  DateTimeColumn get targetDate => dateTime()();
  BoolColumn get countUp => boolean().withDefault(Constant(false))();
}

@UseMoor(tables : [Counter])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;

  Future<List<CounterData>> getAllCounter() => select(counter).get();
  Stream<List<CounterData>> watchAllTasks() => select(counter).watch();
  Future insertCounter(CounterData counterData) => into(counter).insert(counterData);
  Future updateCounter(CounterData counterData) => update(counter).replace(counterData);
  Future deleteCounter(CounterData counterData) => delete(counter).delete(counterData);
}