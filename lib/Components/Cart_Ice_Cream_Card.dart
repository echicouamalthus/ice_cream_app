import 'package:flutter/material.dart';
import 'package:ice_cream_app/Constante/Const.dart';

import '../Models/Ice_Cream.dart';

class CardIceCream extends StatelessWidget {
  final void Function()? onPressed;
  final iceCream icecream;

  const CardIceCream(
      {super.key, required this.icecream, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: list,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  icecream.imagpath,
                  width: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  icecream.name,
                  style: titre,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  icecream.price,
                  style: second_titre,
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: secondary,
                    child: IconButton(
                        onPressed: onPressed,
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
