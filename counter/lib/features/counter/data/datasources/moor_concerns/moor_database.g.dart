// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class CounterData extends DataClass implements Insertable<CounterData> {
  final int id;
  final String title;
  final DateTime targetDate;
  final bool countUp;
  CounterData(
      {@required this.id,
      @required this.title,
      @required this.targetDate,
      @required this.countUp});
  factory CounterData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return CounterData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      targetDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}target_date']),
      countUp:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}count_up']),
    );
  }
  factory CounterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return CounterData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      targetDate: serializer.fromJson<DateTime>(json['targetDate']),
      countUp: serializer.fromJson<bool>(json['countUp']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'targetDate': serializer.toJson<DateTime>(targetDate),
      'countUp': serializer.toJson<bool>(countUp),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<CounterData>>(bool nullToAbsent) {
    return CounterCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      targetDate: targetDate == null && nullToAbsent
          ? const Value.absent()
          : Value(targetDate),
      countUp: countUp == null && nullToAbsent
          ? const Value.absent()
          : Value(countUp),
    ) as T;
  }

  CounterData copyWith(
          {int id, String title, DateTime targetDate, bool countUp}) =>
      CounterData(
        id: id ?? this.id,
        title: title ?? this.title,
        targetDate: targetDate ?? this.targetDate,
        countUp: countUp ?? this.countUp,
      );
  @override
  String toString() {
    return (StringBuffer('CounterData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('targetDate: $targetDate, ')
          ..write('countUp: $countUp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(targetDate.hashCode, countUp.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is CounterData &&
          other.id == id &&
          other.title == title &&
          other.targetDate == targetDate &&
          other.countUp == countUp);
}

class CounterCompanion extends UpdateCompanion<CounterData> {
  final Value<int> id;
  final Value<String> title;
  final Value<DateTime> targetDate;
  final Value<bool> countUp;
  const CounterCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.targetDate = const Value.absent(),
    this.countUp = const Value.absent(),
  });
  CounterCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<DateTime> targetDate,
      Value<bool> countUp}) {
    return CounterCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      targetDate: targetDate ?? this.targetDate,
      countUp: countUp ?? this.countUp,
    );
  }
}

class $CounterTable extends Counter with TableInfo<$CounterTable, CounterData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CounterTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _targetDateMeta = const VerificationMeta('targetDate');
  GeneratedDateTimeColumn _targetDate;
  @override
  GeneratedDateTimeColumn get targetDate =>
      _targetDate ??= _constructTargetDate();
  GeneratedDateTimeColumn _constructTargetDate() {
    return GeneratedDateTimeColumn(
      'target_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countUpMeta = const VerificationMeta('countUp');
  GeneratedBoolColumn _countUp;
  @override
  GeneratedBoolColumn get countUp => _countUp ??= _constructCountUp();
  GeneratedBoolColumn _constructCountUp() {
    return GeneratedBoolColumn('count_up', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, targetDate, countUp];
  @override
  $CounterTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'counter';
  @override
  final String actualTableName = 'counter';
  @override
  VerificationContext validateIntegrity(CounterCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.targetDate.present) {
      context.handle(_targetDateMeta,
          targetDate.isAcceptableValue(d.targetDate.value, _targetDateMeta));
    } else if (targetDate.isRequired && isInserting) {
      context.missing(_targetDateMeta);
    }
    if (d.countUp.present) {
      context.handle(_countUpMeta,
          countUp.isAcceptableValue(d.countUp.value, _countUpMeta));
    } else if (countUp.isRequired && isInserting) {
      context.missing(_countUpMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CounterData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CounterData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CounterCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.targetDate.present) {
      map['target_date'] = Variable<DateTime, DateTimeType>(d.targetDate.value);
    }
    if (d.countUp.present) {
      map['count_up'] = Variable<bool, BoolType>(d.countUp.value);
    }
    return map;
  }

  @override
  $CounterTable createAlias(String alias) {
    return $CounterTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $CounterTable _counter;
  $CounterTable get counter => _counter ??= $CounterTable(this);
  @override
  List<TableInfo> get allTables => [counter];
}
