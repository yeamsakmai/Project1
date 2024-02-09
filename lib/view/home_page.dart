import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:syntax_project/view/home_screen.dart';

import 'card_screen.dart';
import 'favorite_screen.dart';
import 'profile_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final List listScreen = [
    HomeScreen(),
    CartScreen(),
    MyWidget(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: listScreen[index],
      ),
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.black,
        colorSelected: Color.fromARGB(255, 18, 190, 2),
        indexSelected: index,
        paddingVertical: 24,
        onTap: (int index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }

  final List<TabItem> items = const [
    TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    TabItem(
      icon: Icons.shopping_cart,
      title: 'Cart',
    ),
    TabItem(
      icon: Icons.favorite_border,
      title: 'Favorite',
    ),
    TabItem(
      icon: Icons.person,
      title: 'Profile',
    ),
  ];
}
