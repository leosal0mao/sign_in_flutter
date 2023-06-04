import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int items = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            setState(() {
              items > 1 ? items-- : null;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            items.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              items++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: TextButton(
        onPressed: press,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
