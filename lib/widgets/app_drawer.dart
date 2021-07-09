import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(title: Text("Bem vindo Usuário")),
        Divider(),
        ListTile(
            leading: Icon(Icons.shop),
            title: Text("Loja"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.HOME,
              );
            }),
        Divider(),
        ListTile(
            leading: Icon(Icons.payment),
            title: Text("Pedidos"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.ORDERS,
              );
            })
      ]),
    );
  }
}
