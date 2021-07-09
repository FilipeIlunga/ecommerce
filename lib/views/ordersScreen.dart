import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/ordes.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/orderWidget.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orders orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus pedidos"),
      ),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) {
          return OrderWidget(orders.items[index]);
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
