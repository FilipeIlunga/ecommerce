import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItem);
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (_) {
        Provider.of<Cart>(context, listen: false)
            .removeItem(cartItem.productId);
      },
      direction: DismissDirection.endToStart,
      background: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          color: Theme.of(context).errorColor,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 40,
          )),
      key: ValueKey(cartItem.id),
      child: Card(
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
          )),
    );
  }
}
