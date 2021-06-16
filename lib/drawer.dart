import 'package:flutter/material.dart';

import 'cubit/home_tab_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Ahmed Masoud'),
            accountEmail: Text('maxzod66@gmail.com'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              HomeTabCubit.of(context).changeTab(HomeTabs.home);
            },
            title: Text('home'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              HomeTabCubit.of(context).changeTab(HomeTabs.cart);
            },
            title: Text('cart'),
            leading: Icon(Icons.shopping_basket),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              HomeTabCubit.of(context).changeTab(HomeTabs.profile);
            },
            title: Text('profile'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              HomeTabCubit.of(context).changeTab(HomeTabs.settings);
            },
            title: Text('settings'),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
