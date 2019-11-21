import 'package:counter/core/usecases/usecase.dart';
import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/repository/counter_repository.dart';
import 'package:counter/features/counter/domain/usecases/get_all_counters.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCounterRepository extends Mock implements CounterRepository {}

void main() {
  MockCounterRepository mockCounterRepository;
  GetAllCounters getAllCounters;
  setUp(() {
    mockCounterRepository = MockCounterRepository();
    getAllCounters = GetAllCounters(mockCounterRepository);
  });

  final counters = <Counter>[
    Counter(countUp: true, targetDate: DateTime.now())
  ];

  test('should get all counters', () async {
    when(mockCounterRepository.getAllCounters())
        .thenAnswer((_) async => counters);

    final result = await getAllCounters(NoParams());

    expect(result, counters);
    verify(mockCounterRepository.getAllCounters());
    verifyNoMoreInteractions(mockCounterRepository);
  });
}
