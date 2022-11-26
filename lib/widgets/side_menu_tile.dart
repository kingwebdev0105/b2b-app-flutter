// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;

class SideMenuTile extends StatefulWidget {
  final IconData _leadingIcon;
  final String _title;
  final bool _showTrailingIcon;
  final Function _onPressed;

  SideMenuTile({
    @required final IconData leadingIcon,
    @required String title,
    final bool showTrailingIcon = true,
    final Function onPressed,
  })  : this._leadingIcon = leadingIcon,
        this._title = title,
        this._showTrailingIcon = showTrailingIcon,
        this._onPressed = onPressed;

  @override
  _SideMenuTileState createState() => _SideMenuTileState();
}

class _SideMenuTileState extends State<SideMenuTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.lightGreen[50] : Colors.transparent,
      child: ListTile(
        leading: Icon(
          widget._leadingIcon,
          size: 30.0,
          color: !isSelected ? Constants.DEFAULT_GREY : Colors.lightGreen,
        ),
        title: Text(
          widget._title,
          style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 20.0),
        ),
        trailing: widget._showTrailingIcon
            ? !isSelected
                ? Icon(Icons.arrow_forward_ios)
                : Icon(
                    Icons.arrow_back_ios,
                    color: Colors.redAccent,
                  )
            : null,
        onTap: () => setState(() {
          isSelected = !isSelected;
          widget._onPressed?.call();
        }),
      ),
    );
  }
}
