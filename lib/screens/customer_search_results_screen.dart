// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';

class CustomerSearchResultScreen extends StatefulWidget {
  static const routeName = '/customer-seach-results';

  @override
  _CustomerSearchResultScreenState createState() => _CustomerSearchResultScreenState();
}

class _CustomerSearchResultScreenState extends State<CustomerSearchResultScreen> with TickerProviderStateMixin {
  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
        ),
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Details Report",
                          style: TextStyle(fontSize: 22, color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "P & P Grocery's",
                          style: TextStyle(fontSize: 18, color: Colors.grey[500], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Bay Road Little London",
                              style: TextStyle(fontSize: 18, color: Colors.grey[500], fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Savannalamar, Westmoreland",
                              style: TextStyle(fontSize: 18, color: Colors.grey[500], fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "TID:",
                                    style: TextStyle(color: Colors.blue[900]),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("A0595101"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("Date:", style: TextStyle(color: Colors.blue[900])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("04 Nov 2020"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("User:", style: TextStyle(color: Colors.blue[900])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Text("1"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("Time:", style: TextStyle(color: Colors.blue[900])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Text("14:31"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 80,
                          width: 350,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[200],
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "# 38965412365",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "10-02-11",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "07:47",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$100",
                                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Flex Card",
                                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "C4",
                                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 80,
                          width: 350,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[200],
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "# 38965412365",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "10-02-11",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "07:47",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$100",
                                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Flex Card",
                                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "C4",
                                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 80,
                          width: 350,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[200],
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "# 38965412365",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "10-02-11",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "07:47",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$100",
                                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Flex Card",
                                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "C4",
                                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 80,
                          width: 350,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[200],
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "# 38965412365",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "10-02-11",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "07:47",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$100",
                                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Flex Card",
                                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "C4",
                                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: 80,
                          width: 350,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[200],
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "# 38965412365",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "10-02-11",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "07:47",
                                          style:
                                              TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$100",
                                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Flex Card",
                                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "C4",
                                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ButtonTheme(
                      minWidth: 200,
                      child: FlatButton(
                        color: Colors.deepOrangeAccent,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          "Print",
                          style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
