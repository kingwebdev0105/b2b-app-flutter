// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/customer_search_results_screen.dart';

class CustomerFindGoNameForm extends StatefulWidget {
  @override
  _CustomerFindGoNameFormState createState() => _CustomerFindGoNameFormState();
}

class _CustomerFindGoNameFormState extends State<CustomerFindGoNameForm> {
  final Helper _helper = Helper();

  bool isSwitched = false;

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
                    TextSpan(text: 'Name', style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
              decoration: _helper.defaultFormFieldStyle(
                hintText: '\tFirst Name',
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: TextFormField(
                decoration: _helper.defaultFormFieldStyle(
                  hintText: '\Second Name',
                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextFormField(
                decoration: _helper.defaultFormFieldStyle(
                  hintText: '\tLast Name',
                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32.0),
                ),
              ),
            ),
            TextFormField(
              decoration: _helper.defaultFormFieldStyle(
                hintText: '\tSecond Last Name',
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: _helper.defaultFormFieldStyle(hintText: 'Day'),
                      items: <String>['1', '2', '3', '4'].map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {},
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: _helper.defaultFormFieldStyle(hintText: 'Month'),
                      items: <String>['Jan', 'Feb', 'Mar'].map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {},
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: _helper.defaultFormFieldStyle(hintText: 'Year'),
                      items: <String>['2020', '2019', '2018'].map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Constants.DARK_BLUE,
                    activeColor: Constants.DARK_BLUE,
                    inactiveThumbColor: Constants.DARK_BLUE,
                  ),
                  Text(
                    'Partial Match',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: isSwitched ? Constants.DARK_BLUE : Colors.black,
                        fontWeight: isSwitched ? FontWeight.bold : FontWeight.normal),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
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
            //This is to allow the user to scroll
            SizedBox(height: 200.0)
          ],
        ),
      ),
    );
  }
}
