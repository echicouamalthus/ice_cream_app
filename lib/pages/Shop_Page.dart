import 'package:flutter/material.dart';
import 'package:ice_cream_app/Components/Cart_Ice_Cream_Card.dart';
import 'package:ice_cream_app/Constante/Const.dart';
import 'package:ice_cream_app/Models/Ice_Cream.dart';
import 'package:ice_cream_app/Models/Ice_Cream_Card.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var value = context.watch<iCeCreamCard>();

    void AddToCart(iceCream icecream) {
      value.addtoCart(icecream);

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Vous l\'avez ajouter a votre cart'),
              ));
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: padding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Something Sweet ?',
                  style: titre,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                height: 60,
                color: list,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: second_titre,
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                  dotColor: list, activeDotColor: secondary),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 320,
                child: PageView.builder(
                    controller: _controller,
                    itemCount: value.getCream.length,
                    itemBuilder: (context, index) {
                      iceCream Cream = value.getCream[index];

                      return CardIceCream(
                        icecream: Cream,
                        onPressed: () => AddToCart(Cream),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
