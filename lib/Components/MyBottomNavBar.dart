import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ice_cream_app/Constante/Const.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: secondary,
          mainAxisAlignment: MainAxisAlignment.center,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.icecream_sharp,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_basket,
              text: 'Cart',
            ),
          ]),
    );
  }
}
