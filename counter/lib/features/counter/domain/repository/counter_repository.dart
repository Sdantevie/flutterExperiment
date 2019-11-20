import 'package:counter/features/counter/domain/entities/counter.dart';

abstract class CounterRepository {
  Future<List<Counter>> getAllCounters();
  Future<Counter> createCounter(Counter counter);
}
