// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/models/product.dart';
import 'package:interlinc_b2b/widgets/product_list_item.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductListItem> get generateProductListGrid {
    return [
      ProductListItem(
        Product(
          amount: '1000',
          companyLabel: 'Ready TV',
          logo: 'assets/images/readytv.png',
          type: 'Credit',
          color: Colors.purple,
        ),
      ),
      ProductListItem(
        Product(
          amount: '1000',
          companyLabel: 'Ready TV',
          logo: 'assets/images/readytv.png',
          type: 'Credit',
          color: Colors.purple,
        ),
      ),
      ProductListItem(
        Product(
          amount: '1000',
          companyLabel: 'JPS',
          logo: 'assets/images/jps.jpg',
          type: 'Credit',
          color: Colors.yellow,
        ),
      ),
      ProductListItem(
        Product(
          amount: '1000',
          companyLabel: 'JPS',
          logo: 'assets/images/jps.jpg',
          type: 'Credit',
          color: Colors.yellow,
        ),
      ),
      ProductListItem(
        Product(
          amount: '50',
          companyLabel: 'Xbox',
          logo: 'assets/images/xbox.png',
          type: 'Digital Product',
          color: Colors.green,
        ),
      ),
      ProductListItem(
        Product(
          amount: '50',
          companyLabel: 'Xbox',
          logo: 'assets/images/xbox.png',
          type: 'Digital Product',
          color: Colors.green,
        ),
      ),
    ];
  }
}
