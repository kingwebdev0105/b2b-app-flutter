// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

class DecoratedIconButton extends StatelessWidget {
  final String _iconSource;
  final double _size;
  final double _height;
  final double _width;
  final double _horizontalPadding;
  final BoxShape _shape;
  final BoxFit _fit;

  DecoratedIconButton({
    @required final String iconSource,
    final double size = 60.0,
    final double height,
    final double width,
    final double horizontalPadding = 5.0,
    final BoxShape shape = BoxShape.rectangle,
    final BoxFit fit = BoxFit.contain,
  })  : assert(iconSource?.isNotEmpty),
        this._iconSource = iconSource,
        this._size = size,
        this._height = height,
        this._width = width,
        this._horizontalPadding = horizontalPadding,
        this._shape = shape,
        this._fit = fit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Container(
        width: _width ?? _size,
        height: _height ?? _size,
        decoration: BoxDecoration(
          shape: _shape,
          image: DecorationImage(
            image: _iconSource.contains('asset')
                ? AssetImage(_iconSource)
                : _iconSource.contains('http')
                    ? NetworkImage(_iconSource)
                    : FileImage(
                        File(_iconSource),
                      ),
            fit: _fit,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
