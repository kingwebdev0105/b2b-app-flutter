// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';
import 'package:interlinc_b2b/widgets/tabs/chip_tab_tab_indicator.dart';
import 'package:interlinc_b2b/widgets/tabs/customer_find_forms/customer_find_biller_info_form.dart';
import 'package:interlinc_b2b/widgets/tabs/customer_find_forms/customer_find_go_id_form.dart';
import 'package:interlinc_b2b/widgets/tabs/customer_find_forms/customer_find_name_form.dart';
import 'package:interlinc_b2b/widgets/tabs/customer_find_forms/customer_find_personal_id_form.dart';

class CustomerFindScreen extends StatefulWidget {
  static const routeName = '/customer-find';

  @override
  _CustomerFindScreenState createState() => _CustomerFindScreenState();
}

class _CustomerFindScreenState extends State<CustomerFindScreen> with TickerProviderStateMixin {
  final Helper _helper = Helper();

  TabController _customerFindTabController;

  final tabs = {
    '0': {
      'index': 0,
      'label': 'GO',
    },
    '1': {
      'index': 1,
      'label': 'Name',
    },
    '2': {
      'index': 2,
      'label': 'Personal ID',
    },
    '3': {
      'index': 3,
      'label': 'Biller Information',
    },
  };

  @override
  void initState() {
    _customerFindTabController = TabController(
      initialIndex: 0,
      length: tabs.length,
      vsync: this,
    );

    _customerFindTabController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(appBarMode: AppBarMode.back),
      body: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              //TODO: Add custom arrow indicator
              // indicator: ArrowTabIndicator(color: Colors.red),
              controller: _customerFindTabController,
              tabs: [
                ChipTabIndicator(
                  _customerFindTabController.index == tabs['0']['index'],
                  Icons.home,

                  //TODO: NEED GO logo
                  // DecoratedIconButton(iconSource: 'assets/images/logo.png'),
                ),
                ChipTabIndicator(
                  _customerFindTabController.index == tabs['1']['index'],
                  Icons.account_box,
                ),
                ChipTabIndicator(
                  _customerFindTabController.index == tabs['2']['index'],
                  Icons.contact_mail_rounded,
                ),
                ChipTabIndicator(
                  _customerFindTabController.index == tabs['3']['index'],
                  Icons.monetization_on,
                ),
              ],
            ),
          ),
          Container(
            //TODO: height should be dynamic
            height: 600.0,
            child: TabBarView(
              controller: _customerFindTabController,
              children: [
                CustomerFindGoIdForm(),
                CustomerFindGoNameForm(),
                CustomerFindPersonalIdForm(),
                CustomerFindBillerInfoForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
