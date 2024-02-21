import 'package:coffee/components/bottom_nav.dart';
import 'package:coffee/constants/constant.dart';
import 'package:coffee/pages/cartPage.dart';
import 'package:coffee/pages/shopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int selectedIndex=0;
  void navigateBottomBar(int index) {
    selectedIndex=index;
  }

  final List pages=[
    //shop page
    ShopPage(),

    //cart page
    CartPage()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyButtonNav(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
    );
  }
}
