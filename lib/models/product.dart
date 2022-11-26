// Flutter imports:
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Product {
  String amount;
  String logo;
  String companyLabel;
  String type;
  Color color;
  Product({
    @required this.amount,
    @required this.logo,
    @required this.companyLabel,
    @required this.type,
    this.color = Colors.white,
  });
}
