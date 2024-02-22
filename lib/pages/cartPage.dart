import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/pages/Models/coffee.dart';
import 'package:coffee/pages/Models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).deleteFromCart(coffee);
  }

  void PayNow() {
    //processing payments
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, data, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ListView.builder(
                          //get individual coffee
                          itemCount: data.userCart.length,
                          itemBuilder: (context, index) {
                            //get coffee
                            Coffee myCoffee = data.userCart[index];
                            return CoffeeTile(
                              coffee: myCoffee,
                              onPressed: () => removeFromCart(myCoffee),
                              icon: Icon(Icons.delete),
                            );
                          }),
                    ),
                    GestureDetector(
                      onTap: PayNow,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.brown),
                        child: Text(
                          "Pay Now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
