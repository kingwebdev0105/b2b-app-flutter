// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/widgets/dialogs/bill_payment_dialog.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/navigation/main_drawer.dart';

class BillPayScreen extends StatefulWidget {
  static const routeName = '/bill-pay';

  @override
  _BillPayScreenState createState() => _BillPayScreenState();
}

class _BillPayScreenState extends State<BillPayScreen> {
  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: MainAppBar(appBarMode: AppBarMode.back),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Bill Payment Form',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Account Number',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Account Number",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Premises Number',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Premises Number",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Payment',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Payment",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Cash Tendered',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Cash Tendered",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Service Fee',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Service Fee",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'GCT',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "GCT",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Biller Amount',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Biller Amount",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Change',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Change",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  minWidth: 350.0,
                  height: 50.0,
                  color: Constants.DEFAULT_GREEN,
                  child: Text(
                    'Pay',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () {
                    _helper.showCustomDialog(context, dialog: BillPaymentDialog());
                  },
                ),
              ),
            ])));
  }
}
