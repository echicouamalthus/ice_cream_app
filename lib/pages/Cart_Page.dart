import 'package:flutter/material.dart';
import 'package:ice_cream_app/Constante/Const.dart';
import 'package:ice_cream_app/Models/Ice_Cream.dart';
import 'package:ice_cream_app/Models/Ice_Cream_Card.dart';
import 'package:provider/provider.dart';

import '../Components/Cart_Ice_Cream_List.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var value = context.watch<iCeCreamCard>();

    void RemoveFromCart(iceCream icecream) {
      value.removeFromCart(icecream);

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Vous l\'avez bien supprimer'),
              ));
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: padding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My Cart',
                  style: titre,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.getCart.length,
                  itemBuilder: ((context, index) {
                    iceCream Cream = value.getCart[index];
                    return ListIceCream(
                      icecream: Cream,
                      onPressed: () => RemoveFromCart(Cream),
                    );
                  })),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 60,
                width: double.infinity,
                color: secondary,
                child: Center(
                    child: Text(
                  'Pay Now',
                  style: box_titre,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
