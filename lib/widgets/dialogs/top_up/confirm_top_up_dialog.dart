// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;

class ConfirmTopUpDialog extends StatelessWidget {
  final String amount;

  ConfirmTopUpDialog(this.amount);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: size.width * 0.90,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Icon(
                  Icons.report_gmailerrorred_rounded,
                  size: 120.0,
                  color: Colors.orange[100],
                ),
              ),
              Text(
                'Are you sure?',
                style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'You are about to print a receipt for the amount of \$$amount.00',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
              FlatButton(
                minWidth: 120.0,
                height: 50.0,
                color: Colors.blue,
                child: Text(
                  'Yes, print it!',
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () => Navigator.of(context).pop(true),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: FlatButton(
                  minWidth: 120.0,
                  height: 50.0,
                  color: Constants.DEFAULT_RED,
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
