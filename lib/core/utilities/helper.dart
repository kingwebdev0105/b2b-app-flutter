// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fluttertoast/fluttertoast.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;

class Helper {
  static final Helper _singleton = Helper._internal();

  Helper._internal();

  factory Helper() {
    return _singleton;
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  Future<bool> showCustomDialog(
    BuildContext context, {
    @required Widget dialog,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => dialog,
    );
  }

  InputDecoration defaultFormFieldStyle({
    double radius = 20.0,
    String hintText = 'hint',
    Widget prefixIcon,
    Widget suffixIcon,
  }) {
    final InputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      borderSide: BorderSide(color: Colors.transparent),
    );

    return InputDecoration(
      hintText: hintText,
      contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 5),
      filled: true,
      isDense: true,
      fillColor: Constants.DEFAULT_GREY,
      enabledBorder: inputBorder,
      focusedBorder: inputBorder,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }
}
