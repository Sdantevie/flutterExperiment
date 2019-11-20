import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:counter/features/counter/domain/entities/counter_mode.dart';
import 'package:meta/meta.dart';

class CounterModel extends Counter {
  CounterModel({@required mode, @required targetDate})
      : super(mode: mode, targetDate: targetDate);

  factory CounterModel.fromJson(Map<String, dynamic> json) {
    return CounterModel(
        mode: json["mode"] == "UP" ? CounterMode.UP : CounterMode.DOWN,
        targetDate: DateTime.parse(json["targetDate"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "mode": mode.toString().split('.').last,
      "targetDate": targetDate.toIso8601String()
    };
  }
}
