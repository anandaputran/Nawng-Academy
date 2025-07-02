import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataKdt = false;
  FFUploadedFile uploadedLocalFile_uploadDataKdt =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataKdt = '';

  // State field(s) for nama widget.
  FocusNode? namaFocusNode;
  TextEditingController? namaTextController;
  String? Function(BuildContext, String?)? namaTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;
  // Stores action output result for [Backend Call - API (UploadPhotoToSupabase)] action in daftar widget.
  ApiCallResponse? upload;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    password2Visibility = false;
  }

  @override
  void dispose() {
    namaFocusNode?.dispose();
    namaTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();
  }
}
