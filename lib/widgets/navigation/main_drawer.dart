// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/customer_find_screen.dart';
import 'package:interlinc_b2b/widgets/custom/custom_drawer.dart' as customDrawer;
import 'package:interlinc_b2b/widgets/profile_fragment.dart';
import 'package:interlinc_b2b/widgets/side_menu_tile.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return customDrawer.Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 50.0),
            child: ProfileFragment(
              image: 'assets/images/avatar.png',
              userName: 'George Henry',
              email: 'georgeh@facey.com',
            ),
          ),
          SideMenuTile(
            leadingIcon: Icons.home,
            title: 'Home',
          ),
          SideMenuTile(
            leadingIcon: Icons.print,
            title: 'Reprint',
          ),
          SideMenuTile(
            leadingIcon: Icons.bar_chart,
            title: 'Reports',
          ),
          SideMenuTile(
            leadingIcon: Icons.account_box_rounded,
            title: 'Customers',
            onPressed: () => AppRouter.sailor.navigate(CustomerFindScreen.routeName),
          ),
          SideMenuTile(
            leadingIcon: Icons.favorite,
            title: 'Balance',
          ),
          SideMenuTile(
            leadingIcon: Icons.shopping_basket,
            title: 'Products',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: SideMenuTile(
              leadingIcon: Icons.settings,
              title: 'Settings',
              showTrailingIcon: false,
            ),
          ),
        ],
      ),
    );
  }
}
