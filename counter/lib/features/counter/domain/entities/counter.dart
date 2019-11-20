import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'counter_mode.dart';

class Counter extends Equatable {
  final CounterMode mode;
  final DateTime targetDate;

  Counter({@required this.mode, @required this.targetDate})
      : super([mode, targetDate]);
}
