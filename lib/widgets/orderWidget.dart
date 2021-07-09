import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop/providers/ordes.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  OrderWidget(this.order);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
          title: Text("R\$ ${order.total}"),
          subtitle: Text(DateFormat.yMMMEd().add_Hm().format(order.date)),
          trailing: IconButton(
            icon: Icon(Icons.expand_more),
            onPressed: null,
          )),
    );
  }
}
