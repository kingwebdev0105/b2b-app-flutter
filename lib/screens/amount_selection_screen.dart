// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';
import 'package:sailor/sailor.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/models/payment_details.dart';
import 'package:interlinc_b2b/providers/amount_selection_provider.dart';
import 'package:interlinc_b2b/widgets/dialogs/direct_top_up/enter_direct_top_up_dialog.dart';
import 'package:interlinc_b2b/widgets/flexible_grid_view.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/navigation/main_drawer.dart';

class AmountSelectionScreen extends StatelessWidget {
  static const routeName = '/amount-selection';

  final AmountSelectionScreenArgs amountSelectionScreenArgs;

  AmountSelectionScreen(this.amountSelectionScreenArgs);

  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(),
      drawer: MainDrawer(),
      body: Consumer<AmountSelectionProvider>(
        builder: (context, amountSelectionProvider, child) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  'Most Popular',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            FlexibleGridView(
              defaultHeight: 100.0,
              rows: amountSelectionProvider.generateAmountSelectionGridDefault,
              onPressed: (selectedAmount) => amountSelectionProvider.confirmPaymentDetails(
                context,
                PaymentDetails(merchant: amountSelectionScreenArgs._selectedLabel, amount: selectedAmount),
              ),
            ),
            Container(
              height: 50.0,
              width: size.width * 0.99,
              color: Constants.DEFAULT_GREY,
              child: Center(
                child: Text(
                  'Direct Top-Up',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            FlexibleGridView(
              defaultHeight: 100.0,
              rows: amountSelectionProvider.generateAmountSelectionGridForDirectTopUp,
              onPressed: (selectedAmount) {
                //TODO: improve this approach, maybe use an ID instead
                if (selectedAmount == 'Enter Amount') {
                  // AppRouter.sailor.navigate(EnterAmountScreen.routeName);
                  _helper.showCustomDialog(context, dialog: EnterDirectTopUpDialog());
                } else {
                  amountSelectionProvider.confirmPaymentDetails(
                    context,
                    PaymentDetails(merchant: amountSelectionScreenArgs._selectedLabel, amount: selectedAmount),
                  );
                }
              },
            ),
            SizedBox(height: 50.0)
          ],
        ),
      ),
    );
  }
}

class AmountSelectionScreenArgs extends BaseArguments {
  final String _selectedLabel;

  AmountSelectionScreenArgs({
    @required final String selectedLabel,
  })  : this._selectedLabel = selectedLabel,
        assert(selectedLabel != null);
}
