import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNav extends StatelessWidget {
  void Function(int) ? onTabChange;
  MyButtonNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          activeColor: Colors.grey[700],
          color: Colors.grey[400],
          tabBorderRadius: 24.0,
          tabActiveBorder: Border.all(width: 2.0, color: Colors.white),
          mainAxisAlignment: MainAxisAlignment.center,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ]),
    );
  }
}
