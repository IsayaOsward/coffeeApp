import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/pages/Models/coffee.dart';
import 'package:coffee/pages/Models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemtoCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "How would you like your coffee?",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      //get individual coffee
                      Coffee eachCoffee = value.coffeeShop[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: ()=> addToCart(eachCoffee),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
