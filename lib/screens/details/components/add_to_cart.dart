import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPadding),
          height: 50,
          width: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: product!.color!),
          ),
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/add_to_cart.svg", color: product!.color!),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
