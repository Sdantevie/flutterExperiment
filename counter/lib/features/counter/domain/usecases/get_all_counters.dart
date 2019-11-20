import 'package:counter/core/usecases/usecase.dart';
import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/repository/counter_repository.dart';

class GetAllCounters extends UseCase<List<Counter>, NoParams> {
  final CounterRepository counterRepository;

  GetAllCounters(this.counterRepository);

  @override
  Future<List<Counter>> call(NoParams params) async {
    return await counterRepository.getAllCounters();
  }
}
