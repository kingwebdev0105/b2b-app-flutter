// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/models/payment_details.dart';
import 'package:interlinc_b2b/widgets/buttons/decorated_icon_button.dart';

class PaymentDetailsDialog extends StatelessWidget {
  final PaymentDetails _paymentDetails;
  final String _title;

  const PaymentDetailsDialog({
    @required final PaymentDetails paymentDetails,
    final String title = 'Confirm Purchase',
  })  : this._paymentDetails = paymentDetails,
        this._title = title;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: DecoratedIconButton(
              iconSource: 'assets/images/logo.png',
              size: 60.0,
            ),
            title: Text(
              _title,
              style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 22.0),
            ),
            subtitle: Text('Subhead'),
          ),
          Container(
            height: 200.0,
            width: double.infinity,
            color: Constants.DEFAULT_GREY,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _paymentDetails.merchant,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 5.0),
                Text(
                  _paymentDetails.amount,
                  style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  minWidth: 120.0,
                  height: 50.0,
                  color: Constants.DEFAULT_RED,
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
                FlatButton(
                  minWidth: 120.0,
                  height: 50.0,
                  color: Constants.DEFAULT_GREEN,
                  child: Text(
                    'OK',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () => Navigator.of(context).pop(true),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
