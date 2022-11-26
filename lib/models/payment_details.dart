// Dart imports:
import 'package:meta/meta.dart';

class PaymentDetails {
  String merchant;
  String amount;

  PaymentDetails({
    @required this.merchant,
    @required this.amount,
  });
}
