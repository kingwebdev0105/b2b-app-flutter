// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/models/product.dart';
import 'package:interlinc_b2b/widgets/buttons/decorated_icon_button.dart';

class ProductListItem extends StatelessWidget {
  final Product _product;

  ProductListItem(this._product);

  @override
  Widget build(BuildContext context) {
    final borderRadius = 15.0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Constants.DARK_GREY),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                child: Text(
                  '\$ ${_product.amount}',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: _product.color,
                      ),
                ),
              ),
            ),
            DecoratedIconButton(
              iconSource: _product.logo,
              width: 60.0,
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                _product.companyLabel,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: _product.color,
                  border: Border.all(color: Constants.DARK_GREY),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                    bottomRight: Radius.circular(borderRadius),
                  ),
                ),
                width: double.infinity,
                child: Center(
                  child: Text(
                    _product.type,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
