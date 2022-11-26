// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/models/grid_model.dart';

class FlexibleGridView extends StatelessWidget {
  final List<List<GridModel>> _rows;
  final Function(String) _onPressed;
  final double _defaultHeight;

  FlexibleGridView({
    @required final List<List<GridModel>> rows,
    Function(String) onPressed,
    double defaultHeight,
  })  : this._rows = rows,
        this._onPressed = onPressed,
        this._defaultHeight = defaultHeight;

  @override
  Widget build(BuildContext context) {
    Column c = Column(children: []);

    _rows.forEach(
      (row) {
        c.children.add(
          Row(
            children: [
              ...row.map(
                (grid) => Expanded(
                  flex: grid.flex,
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          color: grid.backgroundColor,
                        ),
                        height: _defaultHeight ?? grid.height,
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            grid.label,
                            style: TextStyle(
                              color: grid.fontColor,
                              fontSize: grid.fontSize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _onPressed?.call(grid.label),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    return c;
  }
}
