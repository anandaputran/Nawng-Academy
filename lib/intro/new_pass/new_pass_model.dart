import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_pass_widget.dart' show NewPassWidget;
import 'package:flutter/material.dart';

class NewPassModel extends FlutterFlowModel<NewPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for passwordbaru widget.
  FocusNode? passwordbaruFocusNode;
  TextEditingController? passwordbaruTextController;
  late bool passwordbaruVisibility;
  String? Function(BuildContext, String?)? passwordbaruTextControllerValidator;
  // State field(s) for passwordbaru2 widget.
  FocusNode? passwordbaru2FocusNode;
  TextEditingController? passwordbaru2TextController;
  late bool passwordbaru2Visibility;
  String? Function(BuildContext, String?)? passwordbaru2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordbaruVisibility = false;
    passwordbaru2Visibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordbaruFocusNode?.dispose();
    passwordbaruTextController?.dispose();

    passwordbaru2FocusNode?.dispose();
    passwordbaru2TextController?.dispose();
  }
}
