// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/customer_search_results_screen.dart';

class CustomerFindGoIdForm extends StatelessWidget {
  final Helper _helper = Helper();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: RichText(
                text: TextSpan(
                  text: 'Search using your ',
                  style: Theme.of(context).textTheme.caption.copyWith(fontSize: 18.0),
                  children: <TextSpan>[
                    TextSpan(text: 'GO ID', style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
              decoration: _helper.defaultFormFieldStyle(
                hintText: '\tSearch - Go ID',
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
              child: FlatButton.icon(
                icon: Icon(Icons.search, color: Colors.white),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                minWidth: 250.0,
                height: 50.0,
                color: Colors.lightGreen,
                label: Text(
                  'Search',
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () => AppRouter.sailor.navigate(CustomerSearchResultScreen.routeName),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
