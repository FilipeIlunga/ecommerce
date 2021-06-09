import 'package:flutter/material.dart';
import 'package:shop/widgets/product_Grid.dart';

enum FilterOptions { Favorite, All }

class ProductOverviewScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha Loja"), actions: <Widget>[
        PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {},
            itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Todos'),
                    value: FilterOptions.All,
                  ),
                  PopupMenuItem(
                      child: Text('Somente Favoritos'),
                      value: FilterOptions.Favorite)
                ])
      ]),
      body: ProductGrid(),
    );
  }
}
