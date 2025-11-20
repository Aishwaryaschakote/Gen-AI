import '../database.dart';

class MealLogssTable extends SupabaseTable<MealLogssRow> {
  @override
  String get tableName => 'meal_logss';

  @override
  MealLogssRow createRow(Map<String, dynamic> data) => MealLogssRow(data);
}

class MealLogssRow extends SupabaseDataRow {
  MealLogssRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MealLogssTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get mealImageUrl => getField<String>('meal_image_url')!;
  set mealImageUrl(String value) => setField<String>('meal_image_url', value);

  DateTime? get uploadedAt => getField<DateTime>('uploaded_at');
  set uploadedAt(DateTime? value) => setField<DateTime>('uploaded_at', value);

  String? get foodName => getField<String>('food_name');
  set foodName(String? value) => setField<String>('food_name', value);

  int? get estimatedCalories => getField<int>('estimated_calories');
  set estimatedCalories(int? value) =>
      setField<int>('estimated_calories', value);

  double? get aiConfidence => getField<double>('ai_confidence');
  set aiConfidence(double? value) => setField<double>('ai_confidence', value);
}
