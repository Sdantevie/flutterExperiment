import 'package:counter/features/counter/domain/entities/counter.dart';
import 'package:meta/meta.dart';

class CounterModel extends Counter {
  CounterModel({@required countUp, @required title, @required targetDate})
      : super(countUp: countUp, title:title, targetDate: targetDate);

  factory CounterModel.fromJson(Map<String, dynamic> json) {
    return CounterModel(
        countUp: json["countUp"],
        title: json["title"],
        targetDate: DateTime.parse(json["targetDate"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "countUp": countUp,
      "title": title,
      "targetDate": targetDate.toIso8601String()
    };
  }
}
