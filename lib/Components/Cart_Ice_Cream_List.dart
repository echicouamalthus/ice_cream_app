import 'package:flutter/material.dart';
import 'package:ice_cream_app/Constante/Const.dart';
import 'package:ice_cream_app/Models/Ice_Cream.dart';

class ListIceCream extends StatelessWidget {
  final void Function()? onPressed;
  final iceCream icecream;
  const ListIceCream({super.key, required this.icecream, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          color: list,
          child: ListTile(
            leading: Image.asset(icecream.imagpath),
            title: Text(icecream.name),
            subtitle: Text(icecream.price),
            trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.delete)),
          ),
        ),
      ),
    );
  }
}
