// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends BaseStruct {
  ProductDataStruct({
    String? productName,
    NutrientsStruct? nutrients,
  })  : _productName = productName,
        _nutrients = nutrients;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "nutrients" field.
  NutrientsStruct? _nutrients;
  NutrientsStruct get nutrients => _nutrients ?? NutrientsStruct();
  set nutrients(NutrientsStruct? val) => _nutrients = val;

  void updateNutrients(Function(NutrientsStruct) updateFn) {
    updateFn(_nutrients ??= NutrientsStruct());
  }

  bool hasNutrients() => _nutrients != null;

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        productName: data['productName'] as String?,
        nutrients: data['nutrients'] is NutrientsStruct
            ? data['nutrients']
            : NutrientsStruct.maybeFromMap(data['nutrients']),
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'nutrients': _nutrients?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'nutrients': serializeParam(
          _nutrients,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        nutrients: deserializeStructParam(
          data['nutrients'],
          ParamType.DataStruct,
          false,
          structBuilder: NutrientsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataStruct &&
        productName == other.productName &&
        nutrients == other.nutrients;
  }

  @override
  int get hashCode => const ListEquality().hash([productName, nutrients]);
}

ProductDataStruct createProductDataStruct({
  String? productName,
  NutrientsStruct? nutrients,
}) =>
    ProductDataStruct(
      productName: productName,
      nutrients: nutrients ?? NutrientsStruct(),
    );
