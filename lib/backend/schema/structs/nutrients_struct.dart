// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutrientsStruct extends BaseStruct {
  NutrientsStruct({
    double? energy,
    double? fat,
    double? saturatedFat,
    double? carbohydrates,
    double? sugars,
    double? fiber,
    double? proteins,
    double? salt,
    double? sodium,
  })  : _energy = energy,
        _fat = fat,
        _saturatedFat = saturatedFat,
        _carbohydrates = carbohydrates,
        _sugars = sugars,
        _fiber = fiber,
        _proteins = proteins,
        _salt = salt,
        _sodium = sodium;

  // "energy" field.
  double? _energy;
  double get energy => _energy ?? 0.0;
  set energy(double? val) => _energy = val;

  void incrementEnergy(double amount) => energy = energy + amount;

  bool hasEnergy() => _energy != null;

  // "fat" field.
  double? _fat;
  double get fat => _fat ?? 0.0;
  set fat(double? val) => _fat = val;

  void incrementFat(double amount) => fat = fat + amount;

  bool hasFat() => _fat != null;

  // "saturated_Fat" field.
  double? _saturatedFat;
  double get saturatedFat => _saturatedFat ?? 0.0;
  set saturatedFat(double? val) => _saturatedFat = val;

  void incrementSaturatedFat(double amount) =>
      saturatedFat = saturatedFat + amount;

  bool hasSaturatedFat() => _saturatedFat != null;

  // "carbohydrates" field.
  double? _carbohydrates;
  double get carbohydrates => _carbohydrates ?? 0.0;
  set carbohydrates(double? val) => _carbohydrates = val;

  void incrementCarbohydrates(double amount) =>
      carbohydrates = carbohydrates + amount;

  bool hasCarbohydrates() => _carbohydrates != null;

  // "sugars" field.
  double? _sugars;
  double get sugars => _sugars ?? 0.0;
  set sugars(double? val) => _sugars = val;

  void incrementSugars(double amount) => sugars = sugars + amount;

  bool hasSugars() => _sugars != null;

  // "fiber" field.
  double? _fiber;
  double get fiber => _fiber ?? 0.0;
  set fiber(double? val) => _fiber = val;

  void incrementFiber(double amount) => fiber = fiber + amount;

  bool hasFiber() => _fiber != null;

  // "proteins" field.
  double? _proteins;
  double get proteins => _proteins ?? 0.0;
  set proteins(double? val) => _proteins = val;

  void incrementProteins(double amount) => proteins = proteins + amount;

  bool hasProteins() => _proteins != null;

  // "salt" field.
  double? _salt;
  double get salt => _salt ?? 0.0;
  set salt(double? val) => _salt = val;

  void incrementSalt(double amount) => salt = salt + amount;

  bool hasSalt() => _salt != null;

  // "sodium" field.
  double? _sodium;
  double get sodium => _sodium ?? 0.0;
  set sodium(double? val) => _sodium = val;

  void incrementSodium(double amount) => sodium = sodium + amount;

  bool hasSodium() => _sodium != null;

  static NutrientsStruct fromMap(Map<String, dynamic> data) => NutrientsStruct(
        energy: castToType<double>(data['energy']),
        fat: castToType<double>(data['fat']),
        saturatedFat: castToType<double>(data['saturated_Fat']),
        carbohydrates: castToType<double>(data['carbohydrates']),
        sugars: castToType<double>(data['sugars']),
        fiber: castToType<double>(data['fiber']),
        proteins: castToType<double>(data['proteins']),
        salt: castToType<double>(data['salt']),
        sodium: castToType<double>(data['sodium']),
      );

  static NutrientsStruct? maybeFromMap(dynamic data) => data is Map
      ? NutrientsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'energy': _energy,
        'fat': _fat,
        'saturated_Fat': _saturatedFat,
        'carbohydrates': _carbohydrates,
        'sugars': _sugars,
        'fiber': _fiber,
        'proteins': _proteins,
        'salt': _salt,
        'sodium': _sodium,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'energy': serializeParam(
          _energy,
          ParamType.double,
        ),
        'fat': serializeParam(
          _fat,
          ParamType.double,
        ),
        'saturated_Fat': serializeParam(
          _saturatedFat,
          ParamType.double,
        ),
        'carbohydrates': serializeParam(
          _carbohydrates,
          ParamType.double,
        ),
        'sugars': serializeParam(
          _sugars,
          ParamType.double,
        ),
        'fiber': serializeParam(
          _fiber,
          ParamType.double,
        ),
        'proteins': serializeParam(
          _proteins,
          ParamType.double,
        ),
        'salt': serializeParam(
          _salt,
          ParamType.double,
        ),
        'sodium': serializeParam(
          _sodium,
          ParamType.double,
        ),
      }.withoutNulls;

  static NutrientsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutrientsStruct(
        energy: deserializeParam(
          data['energy'],
          ParamType.double,
          false,
        ),
        fat: deserializeParam(
          data['fat'],
          ParamType.double,
          false,
        ),
        saturatedFat: deserializeParam(
          data['saturated_Fat'],
          ParamType.double,
          false,
        ),
        carbohydrates: deserializeParam(
          data['carbohydrates'],
          ParamType.double,
          false,
        ),
        sugars: deserializeParam(
          data['sugars'],
          ParamType.double,
          false,
        ),
        fiber: deserializeParam(
          data['fiber'],
          ParamType.double,
          false,
        ),
        proteins: deserializeParam(
          data['proteins'],
          ParamType.double,
          false,
        ),
        salt: deserializeParam(
          data['salt'],
          ParamType.double,
          false,
        ),
        sodium: deserializeParam(
          data['sodium'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'NutrientsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NutrientsStruct &&
        energy == other.energy &&
        fat == other.fat &&
        saturatedFat == other.saturatedFat &&
        carbohydrates == other.carbohydrates &&
        sugars == other.sugars &&
        fiber == other.fiber &&
        proteins == other.proteins &&
        salt == other.salt &&
        sodium == other.sodium;
  }

  @override
  int get hashCode => const ListEquality().hash([
        energy,
        fat,
        saturatedFat,
        carbohydrates,
        sugars,
        fiber,
        proteins,
        salt,
        sodium
      ]);
}

NutrientsStruct createNutrientsStruct({
  double? energy,
  double? fat,
  double? saturatedFat,
  double? carbohydrates,
  double? sugars,
  double? fiber,
  double? proteins,
  double? salt,
  double? sodium,
}) =>
    NutrientsStruct(
      energy: energy,
      fat: fat,
      saturatedFat: saturatedFat,
      carbohydrates: carbohydrates,
      sugars: sugars,
      fiber: fiber,
      proteins: proteins,
      salt: salt,
      sodium: sodium,
    );
