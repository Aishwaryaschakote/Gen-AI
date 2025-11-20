import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? toDouble(String? value) {
  if (value == null || value.isEmpty) return null;
  return double.tryParse(value);
}

/// Parse PI response to plain json object
List<dynamic>? parseNutritionJson(String? productsText) {
  //
  //
  try {
    // Convert the string to a proper Dart List
    final List<dynamic> jsonList = jsonDecode(productsText!);
    return jsonList;
  } catch (e) {
    print('JSON Parse Error: $e');
    return [];
  }
}

dynamic calculateTotalProduct(List<dynamic>? products) {
  double energy = 0;
  double fat = 0;
  double carbohydrates = 0;
  double fiber = 0;
  double proteins = 0;
  double salt = 0;
  double saturatedFat = 0;
  double sodium = 0;
  double sugars = 0;

  List<String> productNames = [];

  for (var item in products!) {
    final nutrients = item['nutrients'] ?? {};

    energy += (nutrients['energy'] ?? 0).toDouble();
    fat += (nutrients['fat'] ?? 0).toDouble();
    carbohydrates += (nutrients['carbohydrates'] ?? 0).toDouble();
    fiber += (nutrients['fiber'] ?? 0).toDouble();
    proteins += (nutrients['proteins'] ?? 0).toDouble();
    salt += (nutrients['salt'] ?? 0).toDouble();
    saturatedFat += (nutrients['saturated_Fat'] ?? 0).toDouble();
    sodium += (nutrients['sodium'] ?? 0).toDouble();
    sugars += (nutrients['sugars'] ?? 0).toDouble();

    if (item['productName'] != null) {
      productNames.add(item['productName']);
    }
  }

  final combinedName = productNames.join(" | ");
  double r(double v) => double.parse(v.toStringAsFixed(2));

  return {
    "productName": combinedName,
    "nutrients": {
      "energy": r(energy),
      "fat": r(fat),
      "carbohydrates": r(carbohydrates),
      "fiber": r(fiber),
      "proteins": r(proteins),
      "salt": r(salt),
      "saturated_Fat": r(saturatedFat),
      "sodium": r(sodium),
      "sugars": r(sugars),
    }
  };
}

ProductDataStruct? calculateTotalNutrition(List<ProductDataStruct> products) {
  if (products == null || products.isEmpty) return null;

  double energy = 0;
  double fat = 0;
  double carbs = 0;
  double fiber = 0;
  double proteins = 0;
  double salt = 0;
  double saturatedFat = 0;
  double sodium = 0;
  double sugars = 0;

  for (final p in products) {
    final n = p.nutrients;
    if (n != null) {
      energy += n.energy;
      fat += n.fat;
      carbs += n.carbohydrates;
      fiber += n.fiber;
      proteins += n.proteins;
      salt += n.salt;
      saturatedFat += n.saturatedFat;
      sodium += n.sodium;
      sugars += n.sugars;
    }
  }

  String combinedName = products
      .map((p) => p.productName.toString())
      .where((name) => name.isNotEmpty)
      .join(" | ");

  return createProductDataStruct(
    productName: combinedName,
    nutrients: createNutrientsStruct(
      energy: double.parse(energy.toStringAsFixed(2)),
      fat: double.parse(fat.toStringAsFixed(2)),
      carbohydrates: double.parse(carbs.toStringAsFixed(2)),
      fiber: double.parse(fiber.toStringAsFixed(2)),
      proteins: double.parse(proteins.toStringAsFixed(2)),
      salt: double.parse(salt.toStringAsFixed(2)),
      saturatedFat: double.parse(saturatedFat.toStringAsFixed(2)),
      sodium: double.parse(sodium.toStringAsFixed(2)),
      sugars: double.parse(sugars.toStringAsFixed(2)),
    ),
  );
}
