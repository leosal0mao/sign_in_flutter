import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/color_dot.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: const TextStyle(color: kTextColor), children: [
            const TextSpan(text: "Size\n"),
            TextSpan(text: "${product!.size} cm", style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold))
          ])),
        ),
      ],
    );
  }
}
