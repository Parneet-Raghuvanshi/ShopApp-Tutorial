import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/user_product_item.dart';
import '../providers/products.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = 'user-products';
  @override
  Widget build(BuildContext context) {
    final productsDate = Provider.of<Products>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (ctx, i) => Column(
            children: [
              UserProductItem(
                productsDate.items[i].title,
                productsDate.items[i].imageUrl,
              ),
              Divider(),
            ],
          ),
          itemCount: productsDate.items.length,
        ),
      ),
    );
  }
}
