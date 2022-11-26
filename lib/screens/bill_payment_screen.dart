// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/providers/account_provider.dart';
import 'package:interlinc_b2b/providers/bill_payment_provider.dart';
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/bill_pay_screen.dart';
import 'package:interlinc_b2b/screens/customer_add_screen.dart';
import 'package:interlinc_b2b/widgets/flexible_grid_view.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';

class BillPaymentScreen extends StatelessWidget {
  static const routeName = '/bill-payment';

  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(appBarMode: AppBarMode.back),
      body: ChangeNotifierProvider(
        create: (context) => BillPaymentProvider(),
        child: Consumer2<AccountProvider, BillPaymentProvider>(
          builder: (context, accountProvider, billPaymentProvider, child) => ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Center(
                  child: Text(
                    'Bill Payment',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/customer-info');
                    AppRouter.sailor.navigate(CustomerAddScreen.routeName);
                  },
                  child: Text(
                    'Add Customer',
                    style: Theme.of(context).textTheme.button,
                  ),
                  color: Colors.lightGreen[400],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 5.0),
                child: Center(
                  child: Text(
                    'Quick Pay',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlexibleGridView(
                  rows: billPaymentProvider.generatebillPaymentGrid,
                  onPressed: (selectedGrid) {
                    if (selectedGrid == 'NWC Pay') {
                      AppRouter.sailor.navigate(BillPayScreen.routeName);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
