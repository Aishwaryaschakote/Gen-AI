import '../database.dart';

class UserssTable extends SupabaseTable<UserssRow> {
  @override
  String get tableName => 'userss';

  @override
  UserssRow createRow(Map<String, dynamic> data) => UserssRow(data);
}

class UserssRow extends SupabaseDataRow {
  UserssRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserssTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get fullName => getField<String>('full_name')!;
  set fullName(String value) => setField<String>('full_name', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  double? get height => getField<double>('height');
  set height(double? value) => setField<double>('height', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get currentConditions => getField<String>('current_conditions');
  set currentConditions(String? value) =>
      setField<String>('current_conditions', value);

  String? get additionalHistory => getField<String>('additional_history');
  set additionalHistory(String? value) =>
      setField<String>('additional_history', value);

  double? get targetWeight => getField<double>('target_weight');
  set targetWeight(double? value) => setField<double>('target_weight', value);

  String? get timeframe => getField<String>('timeframe');
  set timeframe(String? value) => setField<String>('timeframe', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
