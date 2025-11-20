import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'medicalinfo_widget.dart' show MedicalinfoWidget;
import 'package:flutter/material.dart';

class MedicalinfoModel extends FlutterFlowModel<MedicalinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MedicalCondition widget.
  String? medicalConditionValue;
  FormFieldController<String>? medicalConditionValueController;
  // State field(s) for AddInfo widget.
  FocusNode? addInfoFocusNode;
  TextEditingController? addInfoTextController;
  String? Function(BuildContext, String?)? addInfoTextControllerValidator;
  // State field(s) for Weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UserssRow>? basicInfo2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addInfoFocusNode?.dispose();
    addInfoTextController?.dispose();

    weightFocusNode?.dispose();
    weightTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();
  }
}
