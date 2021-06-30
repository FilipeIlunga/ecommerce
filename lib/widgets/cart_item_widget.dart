import 'package:flutter/material.dart';
import 'package:shop/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItem);
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
              leading: CircleAvatar(
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: FittedBox(child: Text(" ${cartItem.price}")),
                ),
              ),
              title: Text(cartItem.title),
              subtitle:
                  Text("Total: R\$ ${cartItem.price * cartItem.quantity}"),
              trailing: Text("${cartItem.quantity}x")),
        ));
  }
}
