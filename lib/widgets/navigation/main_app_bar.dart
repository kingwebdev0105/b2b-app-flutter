// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/login_screen.dart';
import 'package:interlinc_b2b/widgets/buttons/decorated_icon_button.dart';

enum AppBarMode {
  menu,
  back,
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarMode _appBarMode;

  final Helper _helper = Helper();

  MainAppBar({
    final AppBarMode appBarMode = AppBarMode.menu,
  }) : this._appBarMode = appBarMode;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0),
        child: DecoratedIconButton(
          iconSource: 'assets/images/logo.png',
          size: 80.0,
        ),
      ),
      leading: _appBarMode == AppBarMode.menu
          ? GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Icon(
                Icons.menu,
                color: Theme.of(context).accentColor,
                size: 36.0,
              ),
            )
          : _appBarMode == AppBarMode.back
              ? GestureDetector(
                  onTap: () => AppRouter.sailor.pop(),
                  child: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).accentColor,
                    size: 36.0,
                  ),
                )
              : null,
      actions: [
        if (_appBarMode == AppBarMode.menu)
          GestureDetector(
            onTap: () => AppRouter.sailor.navigate(LoginScreen.routeName),
            child: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).accentColor,
              size: 36.0,
            ),
          )
      ],
    );
  }
}
