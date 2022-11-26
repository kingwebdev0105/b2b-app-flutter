// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/models/grid_model.dart';
import 'package:interlinc_b2b/models/payment_details.dart';
import 'package:interlinc_b2b/widgets/dialogs/top_up/confirm_top_up_dialog.dart';
import 'package:interlinc_b2b/widgets/dialogs/top_up/success_top_up_dialog.dart';

class AmountSelectionProvider with ChangeNotifier {
  final Helper _helper = Helper();

  PaymentDetails _confirmedPaymentDetails;

  void updatePaymentDetails(PaymentDetails newConfirmedPaymentDetails) =>
      _confirmedPaymentDetails = newConfirmedPaymentDetails;

  PaymentDetails get getConfirmedPaymentDetails {
    return _confirmedPaymentDetails;
  }

  void confirmPaymentDetails(BuildContext context, PaymentDetails paymentDetails) {
    _helper
        .showCustomDialog(
      context,
      dialog: ConfirmTopUpDialog(paymentDetails.amount),
    )
        .then((result) {
      if (result) {
        _helper.showCustomDialog(context, dialog: SuccessTopUpDialog()).then((_) {
          updatePaymentDetails(paymentDetails);
          _helper.showToast('Confirmed! Receipt Saved');
        });
      }
    });
  }

  List<List<GridModel>> get generateAmountSelectionGridDefault {
    return [
      [
        GridModel(label: '100', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '108', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '150', backgroundColor: Constants.DEFAULT_RED),
      ],
      [
        GridModel(label: '200', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '300', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '500', backgroundColor: Constants.DEFAULT_RED),
      ],
      [
        GridModel(label: '1000', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: 'Other Digicel Products', backgroundColor: Constants.DEFAULT_RED),
      ],
    ];
  }

  List<List<GridModel>> get generateAmountSelectionGridForDirectTopUp {
    return [
      [
        GridModel(label: '100', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '200', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '300', backgroundColor: Constants.DEFAULT_RED),
      ],
      [
        GridModel(label: '500', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: '1000', backgroundColor: Constants.DEFAULT_RED),
        GridModel(
          label: 'Enter Amount',
          fontSize: 24.0,
          backgroundColor: Constants.DEFAULT_GREEN,
        ),
      ],
    ];
  }
}
