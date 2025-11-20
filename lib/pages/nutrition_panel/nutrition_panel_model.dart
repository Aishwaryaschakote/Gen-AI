import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nutrition_panel_widget.dart' show NutritionPanelWidget;
import 'package:flutter/material.dart';

class NutritionPanelModel extends FlutterFlowModel<NutritionPanelWidget> {
  ///  Local state fields for this page.

  List<dynamic> plist = [];
  void addToPlist(dynamic item) => plist.add(item);
  void removeFromPlist(dynamic item) => plist.remove(item);
  void removeAtIndexFromPlist(int index) => plist.removeAt(index);
  void insertAtIndexInPlist(int index, dynamic item) =>
      plist.insert(index, item);
  void updatePlistAtIndex(int index, Function(dynamic) updateFn) =>
      plist[index] = updateFn(plist[index]);

  String? calString;

  ProductDataStruct? fproduct;
  void updateFproductStruct(Function(ProductDataStruct) updateFn) {
    updateFn(fproduct ??= ProductDataStruct());
  }

  ProductDataStruct? totalNutriInfo;
  void updateTotalNutriInfoStruct(Function(ProductDataStruct) updateFn) {
    updateFn(totalNutriInfo ??= ProductDataStruct());
  }

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData7m8 = false;
  FFUploadedFile uploadedLocalFile_uploadData7m8 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData7m8 = '';

  // Stores action output result for [Backend Call - API (FoodCamera)] action in FloatingActionButton widget.
  ApiCallResponse? apicallresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
