import 'package:drawer_with_tabs/drawer.dart';
import 'package:drawer_with_tabs/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_tab_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeTabCubit, HomeTabState>(
      listener: (context, state) {
        if (state is TabChanged) {
          final index = HomeTabs.values.indexOf(state.tab);
          _controller.animateTo(index);
        }
      },
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Icon(Icons.home),
              Icon(Icons.shopping_basket),
              Icon(Icons.person),
              Icon(Icons.settings),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            CustomTab(
              text: 'home',
              color: Colors.red,
            ),
            CustomTab(
              text: 'cart',
              color: Colors.green,
            ),
            CustomTab(
              text: 'profile',
              color: Colors.yellow,
            ),
            CustomTab(
              text: 'settings',
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
