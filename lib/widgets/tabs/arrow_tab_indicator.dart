// Flutter imports:
import 'package:flutter/material.dart';

class ArrowTabIndicator extends Decoration {
  final BoxPainter _painter;

  ArrowTabIndicator({@required Color color}) : _painter = _CirclePainter(color);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;

  _CirclePainter(Color color)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Path _trianglePath = Path();

    _trianglePath.moveTo(cfg.size.width / 2 - 10, cfg.size.height);
    _trianglePath.lineTo(cfg.size.width / 2 + 10, cfg.size.height);
    _trianglePath.lineTo(cfg.size.width / 2, cfg.size.height - 10);
    _trianglePath.lineTo(cfg.size.width / 2 - 10, cfg.size.height);
    _trianglePath.close();
    canvas.drawPath(_trianglePath, _paint);
  }
}
