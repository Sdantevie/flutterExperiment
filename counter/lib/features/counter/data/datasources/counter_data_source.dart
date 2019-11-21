import 'package:counter/features/counter/domain/entities/counter.dart';

abstract class CounterDataSource {
  Future<void> saveCounter(Counter counter);
  Future<List<Counter>> getCounters();
}