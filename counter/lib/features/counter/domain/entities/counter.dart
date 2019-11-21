import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Counter extends Equatable {
  final bool countUp;
  final DateTime targetDate;
  final String title;

  Counter({@required this.countUp, @required this.title, @required this.targetDate})
      : super([countUp, title, targetDate]);
}
