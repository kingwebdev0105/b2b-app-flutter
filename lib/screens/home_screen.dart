// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/providers/account_provider.dart';
import 'package:interlinc_b2b/providers/home_provider.dart';
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/amount_selection_screen.dart';
import 'package:interlinc_b2b/screens/bill_payment_screen.dart';
import 'package:interlinc_b2b/screens/product_list_screen.dart';
import 'package:interlinc_b2b/widgets/flexible_grid_view.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/navigation/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(),
      drawer: MainDrawer(),
      body: ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        child: Consumer2<AccountProvider, HomeProvider>(
          builder: (context, accountProvider, homeProvider, child) => ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Center(
                  child: Text(
                    '10,000 Available Balance',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              FlexibleGridView(
                rows: homeProvider.generateHomeGrid,
                onPressed: (selectedLabel) {
                  //TODO: improve this approach, maybe use an ID instead
                  if (selectedLabel == 'Reprint') {
                    accountProvider.getAmountSelectionProvider.getConfirmedPaymentDetails != null
                        ? homeProvider.reprintPaymentDetails(
                            context,
                            accountProvider.getAmountSelectionProvider.getConfirmedPaymentDetails,
                          )
                        : _helper.showToast('No receipt saved :(');
                  } else if (selectedLabel == 'Bill Payments') {
                    AppRouter.sailor.navigate(BillPaymentScreen.routeName);
                  } else if (selectedLabel == 'Products') {
                    AppRouter.sailor.navigate(ProductListScreen.routeName);
                  } else {
                    AppRouter.sailor.navigate(
                      AmountSelectionScreen.routeName,
                      args: AmountSelectionScreenArgs(selectedLabel: selectedLabel),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
