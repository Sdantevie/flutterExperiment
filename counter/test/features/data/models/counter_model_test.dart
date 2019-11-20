import 'dart:convert';

import 'package:counter/features/counter/data/models/counter_model.dart';
import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/entities/counter_mode.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixtures_reader.dart';

void main() {
  final CounterModel counterModel = CounterModel(
      mode: CounterMode.UP, targetDate: DateTime.parse('2012-02-27 13:27:00'));

  test('should be a subclass of Counter', () async {
    expect(counterModel, isA<Counter>());
  });

  group('from Json', () {
    test(
        'should create a Counter object from a JSON containing the proper data',
        () async {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture("counter.json"));

      final result = CounterModel.fromJson(jsonMap);

      expect(result, counterModel);
    });
  });

  group('to Json', () {
    test('should return a Json containing the proper data', () async {
      final result = counterModel.toJson();

      final expectedMap = {
        "mode": "UP",
        "targetDate": "2012-02-27T13:27:00.000"
      };

      expect(result, expectedMap);
    });
  });
}
