// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/navigation/main_drawer.dart';

class EnterAmountScreen extends StatefulWidget {
  static const routeName = '/enter-amount';

  @override
  _EnterAmountScreenState createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Georges Home Store',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Enter Amount',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: new TextField(
                decoration: InputDecoration(
                    labelText: "Amount",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: new TextField(
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 40.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          minWidth: 120.0,
                          height: 50.0,
                          color: Constants.DEFAULT_GREEN,
                          child: Text(
                            'Checkout',
                            style: Theme.of(context).textTheme.button,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        minWidth: 135.0,
                        height: 50.0,
                        color: Constants.DEFAULT_RED,
                        child: Text(
                          'Cancel',
                          style: Theme.of(context).textTheme.button,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
