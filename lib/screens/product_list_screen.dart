// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/helper.dart';
import 'package:interlinc_b2b/providers/products_provider.dart';
import 'package:interlinc_b2b/widgets/navigation/main_app_bar.dart';

class ProductListScreen extends StatelessWidget {
  static const routeName = '/product-list';

  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MainAppBar(appBarMode: AppBarMode.back),
      body: ChangeNotifierProvider(
        create: (context) => ProductsProvider(),
        child: Consumer<ProductsProvider>(
          builder: (context, productsProvider, child) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: _helper.defaultFormFieldStyle(
                    hintText: '\tSearch',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GridView.count(
                  padding: const EdgeInsets.all(10.0),
                  childAspectRatio: 1.3,
                  crossAxisCount: 2,
                  children: [...productsProvider.generateProductListGrid],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
