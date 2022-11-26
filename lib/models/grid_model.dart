// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;

class GridModel {
  final String label;
  final double fontSize;
  final Color fontColor;
  final Color backgroundColor;
  final int flex;
  final double height;

  GridModel({
    @required this.label,
    this.fontSize = 36.0,
    this.fontColor = Colors.white,
    this.backgroundColor = Constants.DARK_GREY,
    this.flex = 1,
    this.height = 150.0,
  });
}
