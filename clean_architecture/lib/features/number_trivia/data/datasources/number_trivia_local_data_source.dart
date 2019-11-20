import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTriviaModel();
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCahce);
}
