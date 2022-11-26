// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/models/grid_model.dart';
import 'package:interlinc_b2b/models/payment_details.dart';
import 'package:interlinc_b2b/widgets/payment_details_dialog.dart';

class HomeProvider with ChangeNotifier {
  final Helper _helper = Helper();

  void reprintPaymentDetails(BuildContext context, PaymentDetails paymentDetails) {
    _helper
        .showCustomDialog(
      context,
      dialog: PaymentDetailsDialog(
        title: 'Confirm Re-Print',
        paymentDetails: paymentDetails,
      ),
    )
        .then(
      (value) {
        if (value) _helper.showToast('Coming soon!');
      },
    );
  }

  List<List<GridModel>> get generateHomeGrid {
    return [
      [
        GridModel(label: 'Digicel', backgroundColor: Constants.DEFAULT_RED),
        GridModel(label: 'Flow', backgroundColor: Colors.blue)
      ],
      [
        GridModel(label: 'Bill Payments'),
        GridModel(label: 'Other Products'),
      ],
      [
        GridModel(label: 'ReadyTV'),
        GridModel(label: 'Products'),
      ],
      [
        GridModel(label: 'Digital Products'),
      ],
    ];
  }
}
