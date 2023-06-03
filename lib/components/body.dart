import 'package:flutter/material.dart';
import 'package:online_shop/components/categories.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(products[0].image!),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            products[0].title!,
            style: TextStyle(color: kTextLightColor),
          ),
        )
      ],
    );
  }
}
