import 'package:counter/core/usecases/usecase.dart';
import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/repository/counter_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateCounter extends UseCase<Counter, Params> {
  final CounterRepository counterRepository;

  CreateCounter(this.counterRepository);

  @override
  Future<Counter> call(Params params) async {
    return await counterRepository.createCounter(params.counter);
  }
}

class Params extends Equatable {
  final Counter counter;

  Params({@required this.counter}) : super([counter]);
}
