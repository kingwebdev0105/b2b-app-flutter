// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;

class ChipTabIndicator extends StatelessWidget {
  final bool _isSelected;
  final IconData _icon;

  ChipTabIndicator(this._isSelected, this._icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        height: 35.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: _isSelected ? Constants.DARK_GREY : Constants.DARK_BLUE,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            _icon,
            color: _isSelected ? Constants.DARK_BLUE : Colors.white,
          ),
        ),
      ),
    );
  }
}
