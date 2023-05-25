import 'package:flutter/material.dart';
import 'package:ice_cream_app/Constante/Const.dart';

import 'Home_Page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/woolly-ice-cream-1 1.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Something Sweet ?',
                style: titre,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur sit amet consectetur.',
                style: second_titre,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: secondary,
                    child: Center(
                      child: Text(
                        'Enter Shop',
                        style: box_titre,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
