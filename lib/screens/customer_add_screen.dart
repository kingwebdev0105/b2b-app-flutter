// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/widgets/dialogs/confirm_info_dialog.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/navigation/main_drawer.dart';

class CustomerAddScreen extends StatefulWidget {
  static const routeName = '/customer-info';

  @override
  CustomerAddScreenState createState() => CustomerAddScreenState();
}

class CustomerAddScreenState extends State<CustomerAddScreen> {
  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: MainAppBar(appBarMode: AppBarMode.back),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Customer Information',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'First Name',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "First Name",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Last Name',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Last Name",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Date of Birth',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Date of Birth",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Identification Number',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      labelText: "Identification Number",
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
                    'Add Customer',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () {
                    _helper.showCustomDialog(context, dialog: ConfirmInfoDialog());
                  },
                ),
              ),
            ])));
  }
}
