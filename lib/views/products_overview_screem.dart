import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/badge.dart';
import 'package:shop/widgets/product_Grid.dart';

enum FilterOptions { Favorite, All }

class ProductOverviewScren extends StatefulWidget {
  @override
  _ProductOverviewScrenState createState() => _ProductOverviewScrenState();
}

class _ProductOverviewScrenState extends State<ProductOverviewScren> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha Loja"), actions: <Widget>[
        PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
            itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Todos'),
                    value: FilterOptions.All,
                  ),
                  PopupMenuItem(
                      child: Text('Somente Favoritos'),
                      value: FilterOptions.Favorite),
                ]),
        Consumer<Cart>(
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.PRODUCT_CART,
                );
              },
              icon: Icon(Icons.shopping_cart)),
          builder: (context, cart, child) => Badge(
            value: cart.itemsCount.toString(),
            child: child,
          ),
        )
      ]),
      body: ProductGrid(_showFavoriteOnly),
      drawer: AppDrawer(),
    );
  }
}
