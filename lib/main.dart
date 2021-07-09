import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/providers/ordes.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/cartScreen.dart';
import 'package:shop/views/ordersScreen.dart';
import 'package:shop/views/products_overview_screem.dart';

import 'views/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new Products()),
        ChangeNotifierProvider(create: (_) => new Cart()),
        ChangeNotifierProvider(create: (_) => new Orders()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Minha Loja',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          routes: {
            AppRoutes.PRODUCT_Detail: (context) => ProductDetailScreen(),
            AppRoutes.PRODUCT_CART: (context) => CartScreen(),
            AppRoutes.ORDERS: (context) => OrderScreen(),
          },
          home: ProductOverviewScren()),
    );
  }
}
