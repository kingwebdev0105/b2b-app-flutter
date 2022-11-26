// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/providers/amount_selection_provider.dart';

class AccountProvider with ChangeNotifier {
  AmountSelectionProvider _amountSelectionProvider;

  void updateAmountSelectionProvider(AmountSelectionProvider newAmountSelectionProvider) =>
      _amountSelectionProvider = newAmountSelectionProvider;

  AmountSelectionProvider get getAmountSelectionProvider {
    return _amountSelectionProvider;
  }
}
