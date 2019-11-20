import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/entities/counter_mode.dart';
import 'package:counter/features/counter/domain/repository/counter_repository.dart';
import 'package:counter/features/counter/domain/usecases/create_counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCounterRepository extends Mock implements CounterRepository {}

void main() {
  MockCounterRepository mockCounterRepository;
  CreateCounter createCounter;

  setUp(() {
    mockCounterRepository = MockCounterRepository();
    createCounter = CreateCounter(mockCounterRepository);
  });

  final counter = Counter(mode: CounterMode.UP, targetDate: DateTime.now());

  test('should create counter', () async {
    when(mockCounterRepository.createCounter(any))
        .thenAnswer((_) async => counter);

    final result = await createCounter(Params(counter: counter));

    expect(result, counter);
    verify(mockCounterRepository.createCounter(counter));
    verifyNoMoreInteractions(mockCounterRepository);
  });
}
