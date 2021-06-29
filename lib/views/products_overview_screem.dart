import 'package:flutter/material.dart';
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
        Badge(
            value: "2",
            child: IconButton(onPressed: null, icon: Icon(Icons.shopping_cart)))
      ]),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}
