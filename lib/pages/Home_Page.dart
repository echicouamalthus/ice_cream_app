import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream_app/Components/MyBottomNavBar.dart';
import 'package:ice_cream_app/Constante/Const.dart';

import 'Cart_Page.dart';
import 'Shop_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void navigationNavbar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List<Widget> _pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu));
        }),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationNavbar(index),
      ),
      drawer: Drawer(
        backgroundColor: bg,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Icon(
                  Icons.icecream_sharp,
                  size: 100,
                  color: Colors.white,
                )),
                ListTile(
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  title: Text(
                    'Home',
                    style: GoogleFonts.cairo(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_sharp,
                        color: Colors.white,
                      )),
                  title: Text(
                    'About',
                    style: GoogleFonts.cairo(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.login_sharp,
                    color: Colors.white,
                  )),
              title: Text(
                'Login',
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedindex],
    );
  }
}
