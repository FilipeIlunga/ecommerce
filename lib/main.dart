import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/products_overview_screem.dart';

import 'views/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        routes: {AppRoutes.PRODUCT_Detail: (context) => ProductDetailScreen()},
        home: ProductOverviewScren());
  }
}
