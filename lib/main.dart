import 'package:flutter/material.dart';
import 'package:ice_cream_app/Models/Ice_Cream_Card.dart';
import 'package:provider/provider.dart';

import 'pages/Splash_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => iCeCreamCard(),
      builder: ((context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    )),
    );
  }
}