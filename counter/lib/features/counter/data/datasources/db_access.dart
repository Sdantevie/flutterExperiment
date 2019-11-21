import 'package:counter/features/counter/data/datasources/counter_data_source.dart';
import 'package:counter/features/counter/data/datasources/moor_concerns/moor_database.dart';
import 'package:counter/features/counter/domain/entities/counter.dart';

class MoorCounterDataSourceImpl implements CounterDataSource{
  
  final AppDatabase appDatabase;

  MoorCounterDataSourceImpl(this.appDatabase);

  @override
  Future<void> saveCounter(Counter counter) {
    // TODO: implement saveCounter
    return null;
  }

  @override
  Future<List<Counter>> getCounters() {
    final counters = appDatabase.getAllCounter();
    return counters;
  }
  
}