// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodItemDataTypeStruct extends BaseStruct {
  FoodItemDataTypeStruct({
    String? productName,
    NutrientinfoStruct? nutrientinfo,
  })  : _productName = productName,
        _nutrientinfo = nutrientinfo;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "nutrientinfo" field.
  NutrientinfoStruct? _nutrientinfo;
  NutrientinfoStruct get nutrientinfo => _nutrientinfo ?? NutrientinfoStruct();
  set nutrientinfo(NutrientinfoStruct? val) => _nutrientinfo = val;

  void updateNutrientinfo(Function(NutrientinfoStruct) updateFn) {
    updateFn(_nutrientinfo ??= NutrientinfoStruct());
  }

  bool hasNutrientinfo() => _nutrientinfo != null;

  static FoodItemDataTypeStruct fromMap(Map<String, dynamic> data) =>
      FoodItemDataTypeStruct(
        productName: data['productName'] as String?,
        nutrientinfo: data['nutrientinfo'] is NutrientinfoStruct
            ? data['nutrientinfo']
            : NutrientinfoStruct.maybeFromMap(data['nutrientinfo']),
      );

  static FoodItemDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodItemDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'nutrientinfo': _nutrientinfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'nutrientinfo': serializeParam(
          _nutrientinfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FoodItemDataTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FoodItemDataTypeStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        nutrientinfo: deserializeStructParam(
          data['nutrientinfo'],
          ParamType.DataStruct,
          false,
          structBuilder: NutrientinfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FoodItemDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodItemDataTypeStruct &&
        productName == other.productName &&
        nutrientinfo == other.nutrientinfo;
  }

  @override
  int get hashCode => const ListEquality().hash([productName, nutrientinfo]);
}

FoodItemDataTypeStruct createFoodItemDataTypeStruct({
  String? productName,
  NutrientinfoStruct? nutrientinfo,
}) =>
    FoodItemDataTypeStruct(
      productName: productName,
      nutrientinfo: nutrientinfo ?? NutrientinfoStruct(),
    );
